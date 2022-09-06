import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/add_edit_product_bloc.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/description_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/image_url_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/price_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/title_input.dart';
import 'package:flutter_shop/util/extensions.dart';

class AddEditProductScreen extends StatelessWidget {
  const AddEditProductScreen({Key? key}) : super(key: key);

  static const String routeName = '/add_edit_products';

  static Future<void> launchEdit({
    required BuildContext context,
    required String productId,
    required VoidCallback onSuccess,
  }) async {
    final result =
        await Navigator.of(context).pushNamed(routeName, arguments: productId);
    if (result is bool && result) {
      onSuccess.call();
    }
  }

  static Future<void> launchAdd({
    required BuildContext context,
    required VoidCallback onSuccess,
  }) async {
    final result = await Navigator.of(context).pushNamed(routeName);
    if (result is bool && result) {
      onSuccess.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final event = id != null && id is String
        ? AddEditProductEvent.onEdit(productId: id)
        : const AddEditProductEvent.onCreate();

    final repository = locator.get<IProductsRepository>();

    return BlocProvider<AddEditProductBloc>(
      create: (context) => AddEditProductBloc(repository)..add(event),
      child: _AddEditView(isEdit: id != null),
    );
  }
}

class _AddEditView extends StatefulWidget {
  const _AddEditView({
    required bool isEdit,
    Key? key,
  })  : _isEdit = isEdit,
        super(key: key);

  final bool _isEdit;

  @override
  State<_AddEditView> createState() => _AddEditViewState();
}

class _AddEditViewState extends State<_AddEditView> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._isEdit ? 'Edit Product' : 'Add Product'),
        actions: [
          IconButton(
            onPressed: _onSaveClicked,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: BlocConsumer<AddEditProductBloc, AddEditProductState>(
        listener: (context, state) => state.maybeWhen(
          success: (mode, product) =>
              _goBack(context, state.errorMessageOrNull),
          orElse: () => context.showMessage(state.errorMessageOrNull),
        ),
        builder: (context, state) {
          return state.isProgress
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: state.product.title,
                          decoration: InputDecoration(
                            label: const Text('Title'),
                            errorText: _onInputTitleError(state.titleError),
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context)
                                .requestFocus(_priceFocusNode);
                          },
                          onChanged: (value) => _onTitleChanged(context, value),
                        ),
                        TextFormField(
                          initialValue: state.product.price,
                          decoration: InputDecoration(
                            label: const Text('Price'),
                            errorText: _onInputPriceError(state.priceError),
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          focusNode: _priceFocusNode,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context)
                                .requestFocus(_descriptionFocusNode);
                          },
                          onChanged: (value) => _onPriceChanged(context, value),
                        ),
                        TextFormField(
                          initialValue: state.product.description,
                          decoration: InputDecoration(
                            label: const Text('Description'),
                            errorText: _onInputDescError(state.descError),
                          ),
                          textInputAction: TextInputAction.done,
                          maxLines: 3,
                          keyboardType: TextInputType.multiline,
                          focusNode: _descriptionFocusNode,
                          onChanged: (value) =>
                              _onDescriptionChanged(context, value),
                        ),
                        _buildImageInput(state, context),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }

  @override
  void dispose() {
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  Widget _buildImageInput(AddEditProductState state, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 8),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(
            top: 8,
            right: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: state.product.imageUrl.isEmpty || state.urlError != null
              ? const Center(child: Text('Enter a URL'))
              : Image.network(
                  state.product.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Text('Enter a URL'),
                      ),
                    );
                  },
                ),
        ),
        Expanded(
          child: TextFormField(
            initialValue: state.product.imageUrl,
            decoration: InputDecoration(
              label: const Text('Image Url'),
              errorText: _onInputImageUrlError(state.urlError),
            ),
            keyboardType: TextInputType.url,
            textInputAction: TextInputAction.done,
            onChanged: (value) => _onImageUrlChanged(context, value),
            // onEditingComplete: () => _onImageUrlChanged(),
          ),
        ),
      ],
    );
  }

  void _onSaveClicked() {
    context
        .read<AddEditProductBloc>()
        .add(const AddEditProductEvent.onSubmit());
  }

  void _onDescriptionChanged(BuildContext context, String value) {
    context
        .read<AddEditProductBloc>()
        .add(AddEditProductEvent.onDescriptionChanged(desc: value));
  }

  void _onTitleChanged(BuildContext context, String value) {
    context
        .read<AddEditProductBloc>()
        .add(AddEditProductEvent.onTitleChanged(title: value));
  }

  void _onImageUrlChanged(BuildContext context, String value) {
    context
        .read<AddEditProductBloc>()
        .add(AddEditProductEvent.onImageChanged(url: value));
  }

  void _onPriceChanged(BuildContext context, String value) {
    context
        .read<AddEditProductBloc>()
        .add(AddEditProductEvent.onPriceChanged(price: value));
  }

  String? _onInputTitleError(TitleValidationError? titleError) {
    switch (titleError) {
      case TitleValidationError.empty:
        return 'Please provide a title.';
      case TitleValidationError.capitalize:
        return 'Should begin with a capital letter.';
      case TitleValidationError.short:
        return 'Should be at least 3 characters long.';
      default:
        return null;
    }
  }

  String? _onInputPriceError(PriceValidationError? priceError) {
    switch (priceError) {
      case PriceValidationError.invalid:
        return 'Please enter a valid price.';
      case PriceValidationError.small:
        return 'Please enter number greater then zero.';
      default:
        return null;
    }
  }

  String? _onInputDescError(DescriptionValidationError? descError) {
    switch (descError) {
      case DescriptionValidationError.empty:
        return 'Please enter description.';
      case DescriptionValidationError.capitalize:
        return 'Should begin with a capital letter.';
      case DescriptionValidationError.short:
        return 'Should be at least 10 characters long.';
      default:
        return null;
    }
  }

  String? _onInputImageUrlError(ImageUrlValidationError? urlError) {
    switch (urlError) {
      case ImageUrlValidationError.empty:
        return 'Please enter an image URL.';
      case ImageUrlValidationError.invalidUrl:
        return 'Please enter a valid URL.';
      case ImageUrlValidationError.invalidFormat:
        return 'Please enter a valid URL.';
      default:
        return null;
    }
  }

  void _goBack(BuildContext context, String? message) {
    context.showMessage(message);
    Navigator.pop(context, true);
  }
}

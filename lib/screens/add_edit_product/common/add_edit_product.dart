import 'package:flutter/material.dart';

import '/screens/add_edit_product/model/create_product.dart';
import '/util/extensions.dart';

abstract class AddEditProductScreenState<T extends StatefulWidget>
    extends State<T> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imageUrlInputController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool init = false;
  late CreateProduct product = CreateProduct.Empty();

  bool _showProgress = false;

  Future<void> saveForm(CreateProduct product);

  CreateProduct initProduct();

  @override
  void initState() {
    _imageUrlInputController.addListener(_updateImageUrl);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!init) {
      product = initProduct();
      _imageUrlInputController.text = product.imageUrl;
      init = true;
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imageUrlInputController.removeListener(_updateImageUrl);
    _imageUrlInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
        actions: [
          IconButton(
            onPressed: _validateAndSave,
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: _showProgress
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: product.title,
                        decoration: InputDecoration(
                          label: Text('Title'),
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_priceFocusNode);
                        },
                        onSaved: (value) => product.title = value.orEmpty(),
                        validator: (input) => input.isTitleValid(),
                      ),
                      TextFormField(
                        initialValue: product.price.toString(),
                        decoration: InputDecoration(
                          label: Text('Price'),
                        ),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        focusNode: _priceFocusNode,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_descriptionFocusNode);
                        },
                        onSaved: (value) => product.price =
                            double.tryParse(value.orEmpty()) ?? 0.0,
                        validator: (input) => input.isPriceValid(),
                      ),
                      TextFormField(
                        initialValue: product.description,
                        decoration: InputDecoration(
                          label: Text('Description'),
                        ),
                        textInputAction: TextInputAction.done,
                        maxLines: 3,
                        keyboardType: TextInputType.multiline,
                        focusNode: _descriptionFocusNode,
                        onSaved: (value) =>
                            product.description = value.orEmpty(),
                        validator: (input) => input.isDescriptionValid(),
                      ),
                      SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(
                              top: 8,
                              right: 8,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: _imageUrlInputController.text.isEmpty
                                ? Center(child: Text('Enter a URL'))
                                : FittedBox(
                                    child: Image.network(
                                      _imageUrlInputController.text,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          width: 100,
                                          height: 100,
                                          child: Center(
                                            child: Text('Enter a URL'),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('Image Url'),
                              ),
                              keyboardType: TextInputType.url,
                              textInputAction: TextInputAction.done,
                              controller: _imageUrlInputController,
                              onEditingComplete: () => _updateImageUrl(),
                              onSaved: (value) =>
                                  product.imageUrl = value.orEmpty(),
                              validator: (input) => input.isImageUrlValid(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  void _updateImageUrl() {
    if (_imageUrlInputController.text.isImageUrlValid() == null) {
      setState(() {});
    }
  }

  void _validateAndSave() {
    final inputDataValid = _formKey.currentState?.validate() ?? false;
    if (inputDataValid) {
      _formKey.currentState?.save();
      showProgress(true);
      saveForm(product).onErrorMessage(context).whenComplete(() {
        showProgress(false);
        Navigator.of(context).pop();
      });
      // .catchError((error) {
      //   print('$error');
      //   showShackBar('Some thing went wrong');
      //   showProgress(false);
      // });
    }
  }

  void showProgress(bool show) {
    setState(() {
      _showProgress = show;
    });
  }
}

extension _EditProductInputValidate on String? {
  String? isTitleValid() {
    if (this?.isNotEmpty == true) {
      return null;
    } else {
      return 'Please provide a title';
    }
  }

  String? isPriceValid() {
    final input = this;
    if (input == null || input.isEmpty == true) {
      return 'Please enter a price.';
    }
    if (double.tryParse(input) == null) {
      return 'Please enter a valid number.';
    }
    if (double.parse(input) <= 0) {
      return 'Please enter number greater then zero.';
    }
    return null;
  }

  String? isDescriptionValid() {
    final input = this;
    if (input == null || input.isEmpty) {
      return 'Please enter description.';
    }
    if (input.length < 10) {
      return 'Should be at least 10 characters long.';
    }
    return null;
  }

  String? isImageUrlValid() {
    final input = this;
    if (input == null || input.isEmpty) {
      return 'Please enter an image URL.';
    }
    if (!input.startsWith('http') && !input.startsWith('https')) {
      return 'Please enter a valid URL.';
    }
    if (!input.endsWith('.png') &&
        !input.endsWith('jpg') &&
        !input.endsWith('jpeg')) {
      return 'Please enter a valid image URL.';
    }
    return null;
  }
}

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/create_product.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/description_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/image_url_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/price_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/title_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_product_bloc.freezed.dart';

part 'add_edit_product_event.dart';

part 'add_edit_product_state.dart';

class AddEditProductBloc
    extends Bloc<AddEditProductEvent, AddEditProductState> {
  AddEditProductBloc(IProductsRepository repository)
      : _repository = repository,
        super(const _ProgressAddEditProductState()) {
    on<AddEditProductEvent>(
      (event, emit) => event.map<Future<void>>(
        onSubmit: (event) => _submit(event, emit),
        onTitleChanged: (event) => _onTitleChanged(event, emit),
        onDescriptionChanged: (event) => _onDescriptionChanged(event, emit),
        onPriceChanged: (event) => _onPriceChanged(event, emit),
        onImageChanged: (event) => _onImageChanged(event, emit),
        onCreate: (event) => _onCreate(event, emit),
        onEdit: (event) => _onEdit(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IProductsRepository _repository;

  Future<void> _onCreate(
    _CreateAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    emit(
      const AddEditProductState.inputData(
        product: CreateProduct.empty(),
        mode: AddEditProductMode.add,
      ),
    );
  }

  Future<void> _onEdit(
    _EditAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    final product = await _repository.getProductById(event.productId);
    final editProduct = CreateProduct(
      id: product.id,
      title: product.title,
      description: product.description,
      price: product.price.toStringAsFixed(2),
      imageUrl: product.imageUrl,
    );

    emit(
      AddEditProductState.inputData(
        product: editProduct,
        mode: AddEditProductMode.edit,
      ),
    );
  }

  Future<void> _onTitleChanged(
    _TitleChangedAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    emit(
      AddEditProductState.inputData(
        product: state.product.copyWith(title: event.title),
        mode: state.mode,
      ),
    );
  }

  Future<void> _onDescriptionChanged(
    _DescriptionChangedAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    emit(
      AddEditProductState.inputData(
        product: state.product.copyWith(description: event.desc),
        mode: state.mode,
      ),
    );
  }

  Future<void> _onPriceChanged(
    _PriceChangedAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    emit(
      AddEditProductState.inputData(
        product: state.product.copyWith(price: event.price),
        mode: state.mode,
      ),
    );
  }

  Future<void> _onImageChanged(
    _ImageChangedAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    emit(
      AddEditProductState.inputData(
        product: state.product.copyWith(imageUrl: event.url),
        mode: state.mode,
      ),
    );
  }

  Future<void> _submit(
    _SubmitAddEditProductEvent event,
    Emitter<AddEditProductState> emit,
  ) async {
    emit(
      AddEditProductState.progress(
        product: state.product,
        mode: state.mode,
      ),
    );

    var valid = state.product.validate();

    if (!valid) {
      emit(AddEditProductState.invalid(
        product: state.product,
        mode: state.mode,
      ));

      return;
    }

    try {
      if (state.isEditMode) {
        await _repository.editUserProduct(state.product);
      } else {
        await _repository.createUserProduct(state.product);
      }

      emit(const AddEditProductState.success());
    } on Object catch (_) {
      emit(AddEditProductState.error(
        product: state.product,
        mode: state.mode,
        message: 'Could not save product. Please try again later.',
      ));
      rethrow;
    }
  }
}

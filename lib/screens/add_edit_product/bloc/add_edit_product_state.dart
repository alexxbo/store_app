part of 'add_edit_product_bloc.dart';

@freezed
class AddEditProductState with _$AddEditProductState {
  const AddEditProductState._();

  TitleValidationError? get titleError => maybeWhen(
        invalid: (mode, product) => product.titleError,
        orElse: () => null,
      );

  DescriptionValidationError? get descError => maybeWhen(
        invalid: (mode, product) => product.descError,
        orElse: () => null,
      );

  PriceValidationError? get priceError => maybeWhen(
        invalid: (mode, product) => product.priceError,
        orElse: () => null,
      );

  ImageUrlValidationError? get urlError => maybeWhen(
        invalid: (mode, product) => product.imageUrlError,
        orElse: () => null,
      );

  bool get isEditMode => mode == AddEditProductMode.edit;

  bool get isSuccess => maybeWhen(
        success: (mode, product) => true,
        orElse: () => false,
      );

  bool get isProgress => maybeWhen(
        progress: (mode, product) => true,
        orElse: () => false,
      );

  String? get errorMessageOrNull => maybeWhen<String?>(
        error: (mode, product, message) => message,
        orElse: () => null,
      );

  const factory AddEditProductState.progress({
    @Default(AddEditProductMode.add) final AddEditProductMode mode,
    @Default(CreateProduct.empty()) final CreateProduct product,
  }) = _ProgressAddEditProductState;

  const factory AddEditProductState.inputData({
    required final AddEditProductMode mode,
    required final CreateProduct product,
  }) = _InputDataAddEditProductState;

  const factory AddEditProductState.error({
    required final AddEditProductMode mode,
    required final CreateProduct product,
    @Default('The product could not be saved. Please try again later.')
        final String message,
  }) = _ErrorAddEditProductState;

  const factory AddEditProductState.invalid({
    required final AddEditProductMode mode,
    required final CreateProduct product,
  }) = _InvalidAddEditProductState;

  const factory AddEditProductState.success({
    @Default(AddEditProductMode.add) final AddEditProductMode mode,
    @Default(CreateProduct.empty()) final CreateProduct product,
  }) = _SuccessAddEditProductState;
}

enum AddEditProductMode { add, edit }

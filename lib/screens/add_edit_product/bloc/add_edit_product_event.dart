part of 'add_edit_product_bloc.dart';

@freezed
class AddEditProductEvent with _$AddEditProductEvent {
  const AddEditProductEvent._();

  const factory AddEditProductEvent.onCreate() = _CreateAddEditProductEvent;

  const factory AddEditProductEvent.onEdit({
    required String productId,
  }) = _EditAddEditProductEvent;

  const factory AddEditProductEvent.onTitleChanged({
    required String title,
  }) = _TitleChangedAddEditProductEvent;

  const factory AddEditProductEvent.onPriceChanged({
    required String price,
  }) = _PriceChangedAddEditProductEvent;

  const factory AddEditProductEvent.onDescriptionChanged({
    required String desc,
  }) = _DescriptionChangedAddEditProductEvent;

  const factory AddEditProductEvent.onImageChanged({
    required String url,
  }) = _ImageChangedAddEditProductEvent;

  const factory AddEditProductEvent.onSubmit() = _SubmitAddEditProductEvent;
}

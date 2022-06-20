part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  // ignore: unused_element
  const ProductDetailState._();

  const factory ProductDetailState.progress() = _ProgressProductDetailState;

  const factory ProductDetailState.success({
    required final Product product,
  }) = _SuccessProductDetailState;

  const factory ProductDetailState.error({
    @Default('Something went wrong. Please try again later.')
        final String message,
  }) = _ErrorProductDetailState;
}

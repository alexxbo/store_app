part of 'user_products_bloc.dart';

@freezed
class UserProductsState with _$UserProductsState {
  const UserProductsState._();

  const factory UserProductsState.progress({
    @Default(<Product>[]) final List<Product> products,
  }) = _ProgressUserProductsState;

  const factory UserProductsState.success({
    required final List<Product> products,
  }) = _SuccessUserProductsState;

  const factory UserProductsState.error({
    @Default(<Product>[]) final List<Product> products,
    @Default('Something went wrong. Please try again later.')
        final String message,
  }) = _ErrorUserProductsState;
}

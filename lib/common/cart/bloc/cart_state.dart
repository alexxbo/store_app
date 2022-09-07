part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();

  const factory CartState.full({
    required final List<CartModel> items,
  }) = _FullCartState;

  const factory CartState.empty({
    @Default(<CartModel>[]) final List<CartModel> items,
  }) = _EmptyCartState;

  double get totalAmount => when<double>(
        full: (items) => _calculateTotalAmount(items),
        empty: (_) => 0.0,
      );

  int get itemCount => when<int>(
        full: (items) => items.length,
        empty: (_) => 0,
      );

  List<CartModel> get products => when<Iterable<CartModel>>(
        full: (items) => items,
        empty: (items) => items,
      ).toList();

  double _calculateTotalAmount(List<CartModel> items) {
    return items.fold(
      0,
      (total, item) => total + (item.product.price * item.product.quantity),
    );
  }
}

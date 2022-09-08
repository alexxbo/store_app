part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();

  const factory CartState.full({
    required final List<CartItem> items,
  }) = _FullCartState;

  const factory CartState.empty({
    @Default(<CartItem>[]) final List<CartItem> items,
  }) = _EmptyCartState;

  double get totalAmount => when<double>(
        full: (items) => _calculateTotalAmount(items),
        empty: (_) => 0.0,
      );

  int get itemCount => when<int>(
        full: (items) => items.length,
        empty: (_) => 0,
      );

  List<CartItem> get products => when<Iterable<CartItem>>(
        full: (items) => items,
        empty: (items) => items,
      ).toList();

  double _calculateTotalAmount(List<CartItem> items) {
    return items.fold(
      0,
      (total, item) => total + (item.price * item.quantity),
    );
  }
}

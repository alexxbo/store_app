import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/cart/api/cart_api.dart';
import 'package:flutter_shop/common/cart/data/cart_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(ICartRepository repository)
      : _repository = repository,
        super(const CartState.empty()) {
    on<CartEvent>(
      (event, emit) async => event.map<Future<void>>(
        addProduct: (event) => _addProduct(event, emit),
        removeProduct: (event) => _removeProduct(event, emit),
        reduceQuantityOrRemoveProduct: (event) =>
            _reduceQuantityOrRemoveProduct(event, emit),
        clear: (event) => _clear(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  final ICartRepository _repository;

  Future<void> _clear(
    CartEvent event,
    Emitter<CartState> emit,
  ) async {
    await _repository.clear();
    emit(const CartState.empty());
  }

  Future<void> _reduceQuantityOrRemoveProduct(
    _ReduceQuantityOrRemoveProductCartEvent event,
    Emitter<CartState> emit,
  ) async {
    await _repository.removeSingle(event.productId);
    final items = await _repository.getItems();
    items.isEmpty
        ? emit(const CartState.empty())
        : emit(CartState.full(items: items));
  }

  Future<void> _removeProduct(
    _RemoveProductCartEvent event,
    Emitter<CartState> emit,
  ) async {
    await _repository.remove(event.productId);
    final items = await _repository.getItems();
    items.isEmpty
        ? emit(const CartState.empty())
        : emit(CartState.full(items: items));
  }

  Future<void> _addProduct(
    _AddProductCartEvent event,
    Emitter<CartState> emit,
  ) async {
    await _repository.add(
      AddProduct(
        productId: event.productId,
        title: event.title,
        price: event.price,
      ),
    );
    emit(CartState.full(items: await _repository.getItems()));
  }
}

import 'package:flutter_shop/common/data/model/order_item.dart';
import 'package:flutter_shop/common/orders/repository/orders_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'orders_repository_test.mocks.dart';

@GenerateMocks([IOrdersRepository])
void main() {
  late IOrdersRepository repository;

  setUp(() {
    repository = MockIOrdersRepository();
  });

  group('getAllOrders', () {
    test('should get empty list orders', () async {
      when(repository.getOrders()).thenAnswer((_) async => <OrderItem>[]);

      final response = await repository.getOrders();

      expect(response, isEmpty);
      verify(repository.getOrders());
      verifyNoMoreInteractions(repository);
    });

    test('should get list orders', () async {
      final expected = mockOrderList;
      when(repository.getOrders()).thenAnswer((_) async => expected);

      final result = await repository.getOrders();

      expect(result, expected);
      verify(repository.getOrders());
      verifyNoMoreInteractions(repository);
    });
  });
}

List<OrderItem> get mockOrderList {
  return [
    OrderItem(
      id: '12',
      amount: 1,
      products: <OrderProduct>[],
      date: DateTime.now(),
    ),
    OrderItem(
      id: '13',
      amount: 26,
      products: <OrderProduct>[
        const OrderProduct(
          id: '12',
          title: 'pants',
          quantity: 1,
          price: 12.99,
        ),
      ],
      date: DateTime.now(),
    ),
  ];
}

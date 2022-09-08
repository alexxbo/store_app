import 'package:collection/collection.dart';
import 'package:flutter_shop/common/data/model/order_item.dart';
import 'package:flutter_shop/common/orders/api/model/order_item_response.dart';
import 'package:flutter_shop/common/orders/api/model/order_product_response.dart';
import 'package:flutter_shop/common/orders/api/model/order_request.dart';
import 'package:flutter_shop/util/extensions.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

extension OrderItemX on OrderItemResponse {
  OrderItem? toOrderItem() {
    if (id == null) {
      return null;
    }

    return OrderItem(
      id: id!,
      amount: amount ?? 0.0,
      date: date ?? DateTime.fromMillisecondsSinceEpoch(0),
      products: products
              ?.map((item) => item.toOrderProduct())
              .whereNotNull()
              .toList() ??
          [],
    );
  }
}

extension OrderProductX on OrderProductResponse {
  OrderProduct? toOrderProduct() {
    if (id == null) {
      return null;
    }

    return OrderProduct(
      id: id!,
      title: title.orEmpty(),
      quantity: quantity ?? 0,
      price: price ?? 0.0,
    );
  }
}

extension CartItemX on CartItem {
  OrderProductRequest toOrderProductRequest() {
    return OrderProductRequest(
      id: productId,
      title: title,
      quantity: quantity,
      price: price,
    );
  }
}

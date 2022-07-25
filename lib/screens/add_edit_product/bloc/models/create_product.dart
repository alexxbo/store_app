import 'package:flutter_shop/common/products/api/model/product_response.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/description_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/image_url_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/price_input.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/title_input.dart';
import 'package:flutter_shop/util/extensions.dart';
import 'package:formz/formz.dart';

class CreateProduct {
  const CreateProduct({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  const CreateProduct.empty()
      : this(title: '', description: '', price: '0.0', imageUrl: '');

  final String? id;
  final String title;
  final String description;
  final String price;
  final String imageUrl;

  TitleValidationError? get titleError => TitleInput.dirty(title).error;

  DescriptionValidationError? get descError =>
      DescriptionInput.dirty(description).error;

  PriceValidationError? get priceError => PriceInput.dirty(price).error;

  ImageUrlValidationError? get imageUrlError =>
      ImageUrlInput.dirty(imageUrl).error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateProduct &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          price == other.price &&
          imageUrl == other.imageUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      price.hashCode ^
      imageUrl.hashCode;

  CreateProduct copyWith({
    String? id,
    String? title,
    String? description,
    String? price,
    String? imageUrl,
  }) {
    return CreateProduct(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  bool validate() {
    return Formz.validate([
      TitleInput.dirty(title),
      DescriptionInput.dirty(description),
      PriceInput.dirty(price),
      ImageUrlInput.dirty(imageUrl),
    ]).isValid;
  }
}

extension CreateProductX on CreateProduct {
  ProductModel toProductModel(String userId) => ProductModel(
        id: id.orEmpty(),
        title: title,
        description: description,
        price: double.tryParse(price) ?? 0.0,
        imageUrl: imageUrl,
        userId: userId,
      );
}

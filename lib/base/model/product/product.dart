import 'package:fishop_firebase/base/model/customer_review/customer_review.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'product.g.dart';

@Collection<Product>('products')
final productsRef = ProductCollectionReference();

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);

@firestoreSerializable
class Product {
  @Id()
  final String? id;
  final String? title;
  @Max(5.0)
  final double? rating;

  final int? stockCount;
  final String? size;
  final String? productName;
  final String? description;
  final List<CustomerReview>? customerReviews;
  final bool? trendProduct;
  final int? unitPrice;
  final String? category;
  final String? imgUrl;

  Product(
      {required this.title,
      this.rating,
      required this.stockCount,
      required this.size,
      required this.productName,
      required this.description,
      this.customerReviews,
      this.trendProduct,
      required this.unitPrice,
      this.id,
      required this.category,
      this.imgUrl}) {
    _$assertProduct(this);
  }
  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
  Map<String, Object?> toJson() => _$ProductToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'product.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);

final productsRef = ProductCollectionReference();

@Collection<Product>('products')
@Collection<CustomerReview>('products/*/customerReviews')
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
  final bool? trendProduct;
  final int? unitPrice;
  final String? category;
  String? imgUrl;

  Product(
      {required this.title,
      this.rating,
      required this.stockCount,
      required this.size,
      required this.productName,
      required this.description,
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

@firestoreSerializable
class CustomerReview {
  CustomerReview({
    this.id,
    required this.reviewTitle,
    required this.reviewFeedBack,
    required this.reviewRating,
  });
  @Id()
  final String? id;
  final String? reviewTitle;
  final String? reviewFeedBack;
  final String? reviewRating;
  factory CustomerReview.fromJson(Map<String, Object?> json) =>
      _$CustomerReviewFromJson(json);
  Map<String, Object?> toJson() => _$CustomerReviewToJson(this);
}

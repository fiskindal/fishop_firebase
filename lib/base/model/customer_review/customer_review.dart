import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'customer_review.g.dart';

@Collection<CustomerReview>('customerReview')
final productsRef = CustomerReviewCollectionReference();

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);

@firestoreSerializable
class CustomerReview {
  CustomerReview({
    this.id,
    required this.title,
    required this.feedBack,
    required this.rating,
  });
  @Id()
  final String? id;
  final String? title;
  final String? feedBack;
  final String? rating;
  factory CustomerReview.fromJson(Map<String, Object?> json) =>
      _$CustomerReviewFromJson(json);
  Map<String, Object?> toJson() => _$CustomerReviewToJson(this);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'product.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ProductCollectionReference
    implements
        ProductQuery,
        FirestoreCollectionReference<Product, ProductQuerySnapshot> {
  factory ProductCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ProductCollectionReference;

  static Product fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Product.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Product value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Product> get reference;

  @override
  ProductDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ProductDocumentReference> add(Product value);
}

class _$ProductCollectionReference extends _$ProductQuery
    implements ProductCollectionReference {
  factory _$ProductCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ProductCollectionReference._(
      firestore.collection('products').withConverter(
            fromFirestore: ProductCollectionReference.fromFirestore,
            toFirestore: ProductCollectionReference.toFirestore,
          ),
    );
  }

  _$ProductCollectionReference._(
    CollectionReference<Product> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Product> get reference =>
      super.reference as CollectionReference<Product>;

  @override
  ProductDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ProductDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ProductDocumentReference> add(Product value) {
    return reference.add(value).then((ref) => ProductDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProductCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ProductDocumentReference
    extends FirestoreDocumentReference<Product, ProductDocumentSnapshot> {
  factory ProductDocumentReference(DocumentReference<Product> reference) =
      _$ProductDocumentReference;

  DocumentReference<Product> get reference;

  /// A reference to the [ProductCollectionReference] containing this document.
  ProductCollectionReference get parent {
    return _$ProductCollectionReference(reference.firestore);
  }

  late final CustomerReviewCollectionReference customerReviews =
      _$CustomerReviewCollectionReference(
    reference,
  );

  @override
  Stream<ProductDocumentSnapshot> snapshots();

  @override
  Future<ProductDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? title,
    FieldValue titleFieldValue,
    double? rating,
    FieldValue ratingFieldValue,
    int? stockCount,
    FieldValue stockCountFieldValue,
    String? size,
    FieldValue sizeFieldValue,
    String? productName,
    FieldValue productNameFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    bool? trendProduct,
    FieldValue trendProductFieldValue,
    int? unitPrice,
    FieldValue unitPriceFieldValue,
    String? category,
    FieldValue categoryFieldValue,
    String? imgUrl,
    FieldValue imgUrlFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? title,
    FieldValue titleFieldValue,
    double? rating,
    FieldValue ratingFieldValue,
    int? stockCount,
    FieldValue stockCountFieldValue,
    String? size,
    FieldValue sizeFieldValue,
    String? productName,
    FieldValue productNameFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    bool? trendProduct,
    FieldValue trendProductFieldValue,
    int? unitPrice,
    FieldValue unitPriceFieldValue,
    String? category,
    FieldValue categoryFieldValue,
    String? imgUrl,
    FieldValue imgUrlFieldValue,
  });
}

class _$ProductDocumentReference
    extends FirestoreDocumentReference<Product, ProductDocumentSnapshot>
    implements ProductDocumentReference {
  _$ProductDocumentReference(this.reference);

  @override
  final DocumentReference<Product> reference;

  /// A reference to the [ProductCollectionReference] containing this document.
  ProductCollectionReference get parent {
    return _$ProductCollectionReference(reference.firestore);
  }

  late final CustomerReviewCollectionReference customerReviews =
      _$CustomerReviewCollectionReference(
    reference,
  );

  @override
  Stream<ProductDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ProductDocumentSnapshot._);
  }

  @override
  Future<ProductDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProductDocumentSnapshot._);
  }

  @override
  Future<ProductDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ProductDocumentSnapshot._);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? stockCount = _sentinel,
    FieldValue? stockCountFieldValue,
    Object? size = _sentinel,
    FieldValue? sizeFieldValue,
    Object? productName = _sentinel,
    FieldValue? productNameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? trendProduct = _sentinel,
    FieldValue? trendProductFieldValue,
    Object? unitPrice = _sentinel,
    FieldValue? unitPriceFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
    Object? imgUrl = _sentinel,
    FieldValue? imgUrlFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      stockCount == _sentinel || stockCountFieldValue == null,
      "Cannot specify both stockCount and stockCountFieldValue",
    );
    assert(
      size == _sentinel || sizeFieldValue == null,
      "Cannot specify both size and sizeFieldValue",
    );
    assert(
      productName == _sentinel || productNameFieldValue == null,
      "Cannot specify both productName and productNameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      trendProduct == _sentinel || trendProductFieldValue == null,
      "Cannot specify both trendProduct and trendProductFieldValue",
    );
    assert(
      unitPrice == _sentinel || unitPriceFieldValue == null,
      "Cannot specify both unitPrice and unitPriceFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    assert(
      imgUrl == _sentinel || imgUrlFieldValue == null,
      "Cannot specify both imgUrl and imgUrlFieldValue",
    );
    final json = {
      if (title != _sentinel) _$ProductFieldMap['title']!: title as String?,
      if (titleFieldValue != null) _$ProductFieldMap['title']!: titleFieldValue,
      if (rating != _sentinel) _$ProductFieldMap['rating']!: rating as double?,
      if (ratingFieldValue != null)
        _$ProductFieldMap['rating']!: ratingFieldValue,
      if (stockCount != _sentinel)
        _$ProductFieldMap['stockCount']!: stockCount as int?,
      if (stockCountFieldValue != null)
        _$ProductFieldMap['stockCount']!: stockCountFieldValue,
      if (size != _sentinel) _$ProductFieldMap['size']!: size as String?,
      if (sizeFieldValue != null) _$ProductFieldMap['size']!: sizeFieldValue,
      if (productName != _sentinel)
        _$ProductFieldMap['productName']!: productName as String?,
      if (productNameFieldValue != null)
        _$ProductFieldMap['productName']!: productNameFieldValue,
      if (description != _sentinel)
        _$ProductFieldMap['description']!: description as String?,
      if (descriptionFieldValue != null)
        _$ProductFieldMap['description']!: descriptionFieldValue,
      if (trendProduct != _sentinel)
        _$ProductFieldMap['trendProduct']!: trendProduct as bool?,
      if (trendProductFieldValue != null)
        _$ProductFieldMap['trendProduct']!: trendProductFieldValue,
      if (unitPrice != _sentinel)
        _$ProductFieldMap['unitPrice']!: unitPrice as int?,
      if (unitPriceFieldValue != null)
        _$ProductFieldMap['unitPrice']!: unitPriceFieldValue,
      if (category != _sentinel)
        _$ProductFieldMap['category']!: category as String?,
      if (categoryFieldValue != null)
        _$ProductFieldMap['category']!: categoryFieldValue,
      if (imgUrl != _sentinel) _$ProductFieldMap['imgUrl']!: imgUrl as String?,
      if (imgUrlFieldValue != null)
        _$ProductFieldMap['imgUrl']!: imgUrlFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? stockCount = _sentinel,
    FieldValue? stockCountFieldValue,
    Object? size = _sentinel,
    FieldValue? sizeFieldValue,
    Object? productName = _sentinel,
    FieldValue? productNameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? trendProduct = _sentinel,
    FieldValue? trendProductFieldValue,
    Object? unitPrice = _sentinel,
    FieldValue? unitPriceFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
    Object? imgUrl = _sentinel,
    FieldValue? imgUrlFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      stockCount == _sentinel || stockCountFieldValue == null,
      "Cannot specify both stockCount and stockCountFieldValue",
    );
    assert(
      size == _sentinel || sizeFieldValue == null,
      "Cannot specify both size and sizeFieldValue",
    );
    assert(
      productName == _sentinel || productNameFieldValue == null,
      "Cannot specify both productName and productNameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      trendProduct == _sentinel || trendProductFieldValue == null,
      "Cannot specify both trendProduct and trendProductFieldValue",
    );
    assert(
      unitPrice == _sentinel || unitPriceFieldValue == null,
      "Cannot specify both unitPrice and unitPriceFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    assert(
      imgUrl == _sentinel || imgUrlFieldValue == null,
      "Cannot specify both imgUrl and imgUrlFieldValue",
    );
    final json = {
      if (title != _sentinel) _$ProductFieldMap['title']!: title as String?,
      if (titleFieldValue != null) _$ProductFieldMap['title']!: titleFieldValue,
      if (rating != _sentinel) _$ProductFieldMap['rating']!: rating as double?,
      if (ratingFieldValue != null)
        _$ProductFieldMap['rating']!: ratingFieldValue,
      if (stockCount != _sentinel)
        _$ProductFieldMap['stockCount']!: stockCount as int?,
      if (stockCountFieldValue != null)
        _$ProductFieldMap['stockCount']!: stockCountFieldValue,
      if (size != _sentinel) _$ProductFieldMap['size']!: size as String?,
      if (sizeFieldValue != null) _$ProductFieldMap['size']!: sizeFieldValue,
      if (productName != _sentinel)
        _$ProductFieldMap['productName']!: productName as String?,
      if (productNameFieldValue != null)
        _$ProductFieldMap['productName']!: productNameFieldValue,
      if (description != _sentinel)
        _$ProductFieldMap['description']!: description as String?,
      if (descriptionFieldValue != null)
        _$ProductFieldMap['description']!: descriptionFieldValue,
      if (trendProduct != _sentinel)
        _$ProductFieldMap['trendProduct']!: trendProduct as bool?,
      if (trendProductFieldValue != null)
        _$ProductFieldMap['trendProduct']!: trendProductFieldValue,
      if (unitPrice != _sentinel)
        _$ProductFieldMap['unitPrice']!: unitPrice as int?,
      if (unitPriceFieldValue != null)
        _$ProductFieldMap['unitPrice']!: unitPriceFieldValue,
      if (category != _sentinel)
        _$ProductFieldMap['category']!: category as String?,
      if (categoryFieldValue != null)
        _$ProductFieldMap['category']!: categoryFieldValue,
      if (imgUrl != _sentinel) _$ProductFieldMap['imgUrl']!: imgUrl as String?,
      if (imgUrlFieldValue != null)
        _$ProductFieldMap['imgUrl']!: imgUrlFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ProductQuery
    implements QueryReference<Product, ProductQuerySnapshot> {
  @override
  ProductQuery limit(int limit);

  @override
  ProductQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ProductQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ProductQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ProductQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ProductQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  ProductQuery whereRating({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
  });
  ProductQuery whereStockCount({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  });
  ProductQuery whereSize({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  ProductQuery whereProductName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  ProductQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  ProductQuery whereTrendProduct({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool?>? whereIn,
    List<bool?>? whereNotIn,
  });
  ProductQuery whereUnitPrice({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  });
  ProductQuery whereCategory({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  ProductQuery whereImgUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });

  ProductQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByTitle({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByRating({
    bool descending = false,
    double? startAt,
    double? startAfter,
    double? endAt,
    double? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByStockCount({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderBySize({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByProductName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByTrendProduct({
    bool descending = false,
    bool? startAt,
    bool? startAfter,
    bool? endAt,
    bool? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByUnitPrice({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByCategory({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });

  ProductQuery orderByImgUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  });
}

class _$ProductQuery extends QueryReference<Product, ProductQuerySnapshot>
    implements ProductQuery {
  _$ProductQuery(
    this._collection, {
    required Query<Product> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ProductQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ProductQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ProductQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProductQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ProductQuery limit(int limit) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProductQuery limitToLast(int limit) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['title']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereRating({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['rating']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereStockCount({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['stockCount']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereSize({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['size']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereProductName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['productName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['description']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereTrendProduct({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool?>? whereIn,
    List<bool?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['trendProduct']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereUnitPrice({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['unitPrice']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereCategory({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['category']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery whereImgUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProductFieldMap['imgUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProductQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProductFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByRating({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProductFieldMap['rating']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByStockCount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProductFieldMap['stockCount']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderBySize({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProductFieldMap['size']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByProductName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProductFieldMap['productName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProductFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByTrendProduct({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProductFieldMap['trendProduct']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByUnitPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProductFieldMap['unitPrice']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByCategory({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProductFieldMap['category']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProductQuery orderByImgUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProductDocumentSnapshot? startAtDocument,
    ProductDocumentSnapshot? endAtDocument,
    ProductDocumentSnapshot? endBeforeDocument,
    ProductDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProductFieldMap['imgUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProductQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProductQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ProductDocumentSnapshot extends FirestoreDocumentSnapshot<Product> {
  ProductDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Product> snapshot;

  @override
  ProductDocumentReference get reference {
    return ProductDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Product? data;
}

class ProductQuerySnapshot
    extends FirestoreQuerySnapshot<Product, ProductQueryDocumentSnapshot> {
  ProductQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ProductQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Product> snapshot,
  ) {
    final docs = snapshot.docs.map(ProductQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ProductDocumentSnapshot._,
      );
    }).toList();

    return ProductQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ProductDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ProductDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ProductDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Product> snapshot;

  @override
  final List<ProductQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ProductDocumentSnapshot>> docChanges;
}

class ProductQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Product>
    implements ProductDocumentSnapshot {
  ProductQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Product> snapshot;

  @override
  final Product data;

  @override
  ProductDocumentReference get reference {
    return ProductDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CustomerReviewCollectionReference
    implements
        CustomerReviewQuery,
        FirestoreCollectionReference<CustomerReview,
            CustomerReviewQuerySnapshot> {
  factory CustomerReviewCollectionReference(
    DocumentReference<Product> parent,
  ) = _$CustomerReviewCollectionReference;

  static CustomerReview fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CustomerReview.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    CustomerReview value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<CustomerReview> get reference;

  /// A reference to the containing [ProductDocumentReference] if this is a subcollection.
  ProductDocumentReference get parent;

  @override
  CustomerReviewDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CustomerReviewDocumentReference> add(CustomerReview value);
}

class _$CustomerReviewCollectionReference extends _$CustomerReviewQuery
    implements CustomerReviewCollectionReference {
  factory _$CustomerReviewCollectionReference(
    DocumentReference<Product> parent,
  ) {
    return _$CustomerReviewCollectionReference._(
      ProductDocumentReference(parent),
      parent.collection('customerReviews').withConverter(
            fromFirestore: CustomerReviewCollectionReference.fromFirestore,
            toFirestore: CustomerReviewCollectionReference.toFirestore,
          ),
    );
  }

  _$CustomerReviewCollectionReference._(
    this.parent,
    CollectionReference<CustomerReview> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final ProductDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<CustomerReview> get reference =>
      super.reference as CollectionReference<CustomerReview>;

  @override
  CustomerReviewDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CustomerReviewDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CustomerReviewDocumentReference> add(CustomerReview value) {
    return reference
        .add(value)
        .then((ref) => CustomerReviewDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomerReviewCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CustomerReviewDocumentReference
    extends FirestoreDocumentReference<CustomerReview,
        CustomerReviewDocumentSnapshot> {
  factory CustomerReviewDocumentReference(
          DocumentReference<CustomerReview> reference) =
      _$CustomerReviewDocumentReference;

  DocumentReference<CustomerReview> get reference;

  /// A reference to the [CustomerReviewCollectionReference] containing this document.
  CustomerReviewCollectionReference get parent {
    return _$CustomerReviewCollectionReference(
      reference.parent.parent!.withConverter<Product>(
        fromFirestore: ProductCollectionReference.fromFirestore,
        toFirestore: ProductCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomerReviewDocumentSnapshot> snapshots();

  @override
  Future<CustomerReviewDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? reviewTitle,
    FieldValue reviewTitleFieldValue,
    String? reviewFeedBack,
    FieldValue reviewFeedBackFieldValue,
    String? reviewRating,
    FieldValue reviewRatingFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? reviewTitle,
    FieldValue reviewTitleFieldValue,
    String? reviewFeedBack,
    FieldValue reviewFeedBackFieldValue,
    String? reviewRating,
    FieldValue reviewRatingFieldValue,
  });
}

class _$CustomerReviewDocumentReference extends FirestoreDocumentReference<
    CustomerReview,
    CustomerReviewDocumentSnapshot> implements CustomerReviewDocumentReference {
  _$CustomerReviewDocumentReference(this.reference);

  @override
  final DocumentReference<CustomerReview> reference;

  /// A reference to the [CustomerReviewCollectionReference] containing this document.
  CustomerReviewCollectionReference get parent {
    return _$CustomerReviewCollectionReference(
      reference.parent.parent!.withConverter<Product>(
        fromFirestore: ProductCollectionReference.fromFirestore,
        toFirestore: ProductCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomerReviewDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CustomerReviewDocumentSnapshot._);
  }

  @override
  Future<CustomerReviewDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CustomerReviewDocumentSnapshot._);
  }

  @override
  Future<CustomerReviewDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(CustomerReviewDocumentSnapshot._);
  }

  Future<void> update({
    Object? reviewTitle = _sentinel,
    FieldValue? reviewTitleFieldValue,
    Object? reviewFeedBack = _sentinel,
    FieldValue? reviewFeedBackFieldValue,
    Object? reviewRating = _sentinel,
    FieldValue? reviewRatingFieldValue,
  }) async {
    assert(
      reviewTitle == _sentinel || reviewTitleFieldValue == null,
      "Cannot specify both reviewTitle and reviewTitleFieldValue",
    );
    assert(
      reviewFeedBack == _sentinel || reviewFeedBackFieldValue == null,
      "Cannot specify both reviewFeedBack and reviewFeedBackFieldValue",
    );
    assert(
      reviewRating == _sentinel || reviewRatingFieldValue == null,
      "Cannot specify both reviewRating and reviewRatingFieldValue",
    );
    final json = {
      if (reviewTitle != _sentinel)
        _$CustomerReviewFieldMap['reviewTitle']!: reviewTitle as String?,
      if (reviewTitleFieldValue != null)
        _$CustomerReviewFieldMap['reviewTitle']!: reviewTitleFieldValue,
      if (reviewFeedBack != _sentinel)
        _$CustomerReviewFieldMap['reviewFeedBack']!: reviewFeedBack as String?,
      if (reviewFeedBackFieldValue != null)
        _$CustomerReviewFieldMap['reviewFeedBack']!: reviewFeedBackFieldValue,
      if (reviewRating != _sentinel)
        _$CustomerReviewFieldMap['reviewRating']!: reviewRating as String?,
      if (reviewRatingFieldValue != null)
        _$CustomerReviewFieldMap['reviewRating']!: reviewRatingFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? reviewTitle = _sentinel,
    FieldValue? reviewTitleFieldValue,
    Object? reviewFeedBack = _sentinel,
    FieldValue? reviewFeedBackFieldValue,
    Object? reviewRating = _sentinel,
    FieldValue? reviewRatingFieldValue,
  }) {
    assert(
      reviewTitle == _sentinel || reviewTitleFieldValue == null,
      "Cannot specify both reviewTitle and reviewTitleFieldValue",
    );
    assert(
      reviewFeedBack == _sentinel || reviewFeedBackFieldValue == null,
      "Cannot specify both reviewFeedBack and reviewFeedBackFieldValue",
    );
    assert(
      reviewRating == _sentinel || reviewRatingFieldValue == null,
      "Cannot specify both reviewRating and reviewRatingFieldValue",
    );
    final json = {
      if (reviewTitle != _sentinel)
        _$CustomerReviewFieldMap['reviewTitle']!: reviewTitle as String?,
      if (reviewTitleFieldValue != null)
        _$CustomerReviewFieldMap['reviewTitle']!: reviewTitleFieldValue,
      if (reviewFeedBack != _sentinel)
        _$CustomerReviewFieldMap['reviewFeedBack']!: reviewFeedBack as String?,
      if (reviewFeedBackFieldValue != null)
        _$CustomerReviewFieldMap['reviewFeedBack']!: reviewFeedBackFieldValue,
      if (reviewRating != _sentinel)
        _$CustomerReviewFieldMap['reviewRating']!: reviewRating as String?,
      if (reviewRatingFieldValue != null)
        _$CustomerReviewFieldMap['reviewRating']!: reviewRatingFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerReviewDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CustomerReviewQuery
    implements QueryReference<CustomerReview, CustomerReviewQuerySnapshot> {
  @override
  CustomerReviewQuery limit(int limit);

  @override
  CustomerReviewQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  CustomerReviewQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  CustomerReviewQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  CustomerReviewQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerReviewQuery whereReviewTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  CustomerReviewQuery whereReviewFeedBack({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  CustomerReviewQuery whereReviewRating({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });

  CustomerReviewQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  });

  CustomerReviewQuery orderByReviewTitle({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  });

  CustomerReviewQuery orderByReviewFeedBack({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  });

  CustomerReviewQuery orderByReviewRating({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  });
}

class _$CustomerReviewQuery
    extends QueryReference<CustomerReview, CustomerReviewQuerySnapshot>
    implements CustomerReviewQuery {
  _$CustomerReviewQuery(
    this._collection, {
    required Query<CustomerReview> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CustomerReviewQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(CustomerReviewQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CustomerReviewQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(CustomerReviewQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CustomerReviewQuery limit(int limit) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CustomerReviewQuery limitToLast(int limit) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  CustomerReviewQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CustomerReviewQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomerReviewQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomerReviewQuery whereReviewTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomerReviewFieldMap['reviewTitle']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomerReviewQuery whereReviewFeedBack({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomerReviewFieldMap['reviewFeedBack']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomerReviewQuery whereReviewRating({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomerReviewFieldMap['reviewRating']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomerReviewQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CustomerReviewQuery orderByReviewTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CustomerReviewFieldMap['reviewTitle']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CustomerReviewQuery orderByReviewFeedBack({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CustomerReviewFieldMap['reviewFeedBack']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CustomerReviewQuery orderByReviewRating({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerReviewDocumentSnapshot? startAtDocument,
    CustomerReviewDocumentSnapshot? endAtDocument,
    CustomerReviewDocumentSnapshot? endBeforeDocument,
    CustomerReviewDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CustomerReviewFieldMap['reviewRating']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CustomerReviewQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomerReviewQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CustomerReviewDocumentSnapshot
    extends FirestoreDocumentSnapshot<CustomerReview> {
  CustomerReviewDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CustomerReview> snapshot;

  @override
  CustomerReviewDocumentReference get reference {
    return CustomerReviewDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CustomerReview? data;
}

class CustomerReviewQuerySnapshot extends FirestoreQuerySnapshot<CustomerReview,
    CustomerReviewQueryDocumentSnapshot> {
  CustomerReviewQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CustomerReviewQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CustomerReview> snapshot,
  ) {
    final docs =
        snapshot.docs.map(CustomerReviewQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CustomerReviewDocumentSnapshot._,
      );
    }).toList();

    return CustomerReviewQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CustomerReviewDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CustomerReviewDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CustomerReviewDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CustomerReview> snapshot;

  @override
  final List<CustomerReviewQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CustomerReviewDocumentSnapshot>>
      docChanges;
}

class CustomerReviewQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CustomerReview>
    implements CustomerReviewDocumentSnapshot {
  CustomerReviewQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CustomerReview> snapshot;

  @override
  final CustomerReview data;

  @override
  CustomerReviewDocumentReference get reference {
    return CustomerReviewDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertProduct(Product instance) {
  const Max(5.0).validate(instance.rating, 'rating');
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      title: json['title'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      stockCount: json['stockCount'] as int?,
      size: json['size'] as String?,
      productName: json['productName'] as String?,
      description: json['description'] as String?,
      trendProduct: json['trendProduct'] as bool?,
      unitPrice: json['unitPrice'] as int?,
      id: json['id'] as String?,
      category: json['category'] as String?,
      imgUrl: json['imgUrl'] as String?,
    );

const _$ProductFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'rating': 'rating',
  'stockCount': 'stockCount',
  'size': 'size',
  'productName': 'productName',
  'description': 'description',
  'trendProduct': 'trendProduct',
  'unitPrice': 'unitPrice',
  'category': 'category',
  'imgUrl': 'imgUrl',
};

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'stockCount': instance.stockCount,
      'size': instance.size,
      'productName': instance.productName,
      'description': instance.description,
      'trendProduct': instance.trendProduct,
      'unitPrice': instance.unitPrice,
      'category': instance.category,
      'imgUrl': instance.imgUrl,
    };

CustomerReview _$CustomerReviewFromJson(Map<String, dynamic> json) =>
    CustomerReview(
      id: json['id'] as String?,
      reviewTitle: json['reviewTitle'] as String?,
      reviewFeedBack: json['reviewFeedBack'] as String?,
      reviewRating: json['reviewRating'] as String?,
    );

const _$CustomerReviewFieldMap = <String, String>{
  'id': 'id',
  'reviewTitle': 'reviewTitle',
  'reviewFeedBack': 'reviewFeedBack',
  'reviewRating': 'reviewRating',
};

Map<String, dynamic> _$CustomerReviewToJson(CustomerReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewTitle': instance.reviewTitle,
      'reviewFeedBack': instance.reviewFeedBack,
      'reviewRating': instance.reviewRating,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_review.dart';

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
abstract class CustomerReviewCollectionReference
    implements
        CustomerReviewQuery,
        FirestoreCollectionReference<CustomerReview,
            CustomerReviewQuerySnapshot> {
  factory CustomerReviewCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$CustomerReviewCollectionReference;

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

  @override
  CustomerReviewDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CustomerReviewDocumentReference> add(CustomerReview value);
}

class _$CustomerReviewCollectionReference extends _$CustomerReviewQuery
    implements CustomerReviewCollectionReference {
  factory _$CustomerReviewCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$CustomerReviewCollectionReference._(
      firestore.collection('customerReview').withConverter(
            fromFirestore: CustomerReviewCollectionReference.fromFirestore,
            toFirestore: CustomerReviewCollectionReference.toFirestore,
          ),
    );
  }

  _$CustomerReviewCollectionReference._(
    CollectionReference<CustomerReview> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

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
    return _$CustomerReviewCollectionReference(reference.firestore);
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
    String? title,
    FieldValue titleFieldValue,
    String? feedBack,
    FieldValue feedBackFieldValue,
    String? rating,
    FieldValue ratingFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? title,
    FieldValue titleFieldValue,
    String? feedBack,
    FieldValue feedBackFieldValue,
    String? rating,
    FieldValue ratingFieldValue,
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
    return _$CustomerReviewCollectionReference(reference.firestore);
  }

  @override
  Stream<CustomerReviewDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return CustomerReviewDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<CustomerReviewDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return CustomerReviewDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<CustomerReviewDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then((snapshot) {
      return CustomerReviewDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? feedBack = _sentinel,
    FieldValue? feedBackFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      feedBack == _sentinel || feedBackFieldValue == null,
      "Cannot specify both feedBack and feedBackFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    final json = {
      if (title != _sentinel) 'title': title as String?,
      if (titleFieldValue != null) 'title': titleFieldValue,
      if (feedBack != _sentinel) 'feedBack': feedBack as String?,
      if (feedBackFieldValue != null) 'feedBack': feedBackFieldValue,
      if (rating != _sentinel) 'rating': rating as String?,
      if (ratingFieldValue != null) 'rating': ratingFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? feedBack = _sentinel,
    FieldValue? feedBackFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      feedBack == _sentinel || feedBackFieldValue == null,
      "Cannot specify both feedBack and feedBackFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    final json = {
      if (title != _sentinel) 'title': title as String?,
      if (titleFieldValue != null) 'title': titleFieldValue,
      if (feedBack != _sentinel) 'feedBack': feedBack as String?,
      if (feedBackFieldValue != null) 'feedBack': feedBackFieldValue,
      if (rating != _sentinel) 'rating': rating as String?,
      if (ratingFieldValue != null) 'rating': ratingFieldValue,
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

class CustomerReviewDocumentSnapshot
    extends FirestoreDocumentSnapshot<CustomerReview> {
  CustomerReviewDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

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
  CustomerReviewQuery whereTitle({
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
  CustomerReviewQuery whereFeedBack({
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
  CustomerReviewQuery whereRating({
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

  CustomerReviewQuery orderByTitle({
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

  CustomerReviewQuery orderByFeedBack({
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

  CustomerReviewQuery orderByRating({
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

  CustomerReviewQuerySnapshot _decodeSnapshot(
    QuerySnapshot<CustomerReview> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return CustomerReviewQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<CustomerReviewDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: CustomerReviewDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return CustomerReviewQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<CustomerReviewQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<CustomerReviewQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
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

  CustomerReviewQuery whereTitle({
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
        _$CustomerReviewFieldMap['title']!,
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

  CustomerReviewQuery whereFeedBack({
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
        _$CustomerReviewFieldMap['feedBack']!,
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

  CustomerReviewQuery whereRating({
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
        _$CustomerReviewFieldMap['rating']!,
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

  CustomerReviewQuery orderByTitle({
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
    final query = $referenceWithoutCursor
        .orderBy(_$CustomerReviewFieldMap['title']!, descending: descending);
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

  CustomerReviewQuery orderByFeedBack({
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
    final query = $referenceWithoutCursor
        .orderBy(_$CustomerReviewFieldMap['feedBack']!, descending: descending);
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

  CustomerReviewQuery orderByRating({
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
    final query = $referenceWithoutCursor
        .orderBy(_$CustomerReviewFieldMap['rating']!, descending: descending);
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

class CustomerReviewQuerySnapshot extends FirestoreQuerySnapshot<CustomerReview,
    CustomerReviewQueryDocumentSnapshot> {
  CustomerReviewQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

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
  CustomerReviewQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<CustomerReview> snapshot;

  @override
  CustomerReviewDocumentReference get reference {
    return CustomerReviewDocumentReference(snapshot.reference);
  }

  @override
  final CustomerReview data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerReview _$CustomerReviewFromJson(Map<String, dynamic> json) =>
    CustomerReview(
      id: json['id'] as String?,
      title: json['title'] as String?,
      feedBack: json['feedBack'] as String?,
      rating: json['rating'] as String?,
    );

const _$CustomerReviewFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'feedBack': 'feedBack',
  'rating': 'rating',
};

Map<String, dynamic> _$CustomerReviewToJson(CustomerReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'feedBack': instance.feedBack,
      'rating': instance.rating,
    };

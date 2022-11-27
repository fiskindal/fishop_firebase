// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'profile.dart';

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
abstract class ProfileCollectionReference
    implements
        ProfileQuery,
        FirestoreCollectionReference<Profile, ProfileQuerySnapshot> {
  factory ProfileCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ProfileCollectionReference;

  static Profile fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Profile.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Profile value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Profile> get reference;

  @override
  ProfileDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ProfileDocumentReference> add(Profile value);
}

class _$ProfileCollectionReference extends _$ProfileQuery
    implements ProfileCollectionReference {
  factory _$ProfileCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ProfileCollectionReference._(
      firestore.collection('profiles').withConverter(
            fromFirestore: ProfileCollectionReference.fromFirestore,
            toFirestore: ProfileCollectionReference.toFirestore,
          ),
    );
  }

  _$ProfileCollectionReference._(
    CollectionReference<Profile> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Profile> get reference =>
      super.reference as CollectionReference<Profile>;

  @override
  ProfileDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ProfileDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ProfileDocumentReference> add(Profile value) {
    return reference.add(value).then((ref) => ProfileDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProfileCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ProfileDocumentReference
    extends FirestoreDocumentReference<Profile, ProfileDocumentSnapshot> {
  factory ProfileDocumentReference(DocumentReference<Profile> reference) =
      _$ProfileDocumentReference;

  DocumentReference<Profile> get reference;

  /// A reference to the [ProfileCollectionReference] containing this document.
  ProfileCollectionReference get parent {
    return _$ProfileCollectionReference(reference.firestore);
  }

  late final AddressBookCollectionReference addressbooks =
      _$AddressBookCollectionReference(
    reference,
  );

  @override
  Stream<ProfileDocumentSnapshot> snapshots();

  @override
  Future<ProfileDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? name,
    FieldValue nameFieldValue,
    String? surName,
    FieldValue surNameFieldValue,
    String? identity,
    FieldValue identityFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
    String? email,
    FieldValue emailFieldValue,
    List<String?>? giftCodes,
    FieldValue giftCodesFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? name,
    FieldValue nameFieldValue,
    String? surName,
    FieldValue surNameFieldValue,
    String? identity,
    FieldValue identityFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
    String? email,
    FieldValue emailFieldValue,
    List<String?>? giftCodes,
    FieldValue giftCodesFieldValue,
  });
}

class _$ProfileDocumentReference
    extends FirestoreDocumentReference<Profile, ProfileDocumentSnapshot>
    implements ProfileDocumentReference {
  _$ProfileDocumentReference(this.reference);

  @override
  final DocumentReference<Profile> reference;

  /// A reference to the [ProfileCollectionReference] containing this document.
  ProfileCollectionReference get parent {
    return _$ProfileCollectionReference(reference.firestore);
  }

  late final AddressBookCollectionReference addressbooks =
      _$AddressBookCollectionReference(
    reference,
  );

  @override
  Stream<ProfileDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ProfileDocumentSnapshot._);
  }

  @override
  Future<ProfileDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProfileDocumentSnapshot._);
  }

  @override
  Future<ProfileDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ProfileDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? surName = _sentinel,
    FieldValue? surNameFieldValue,
    Object? identity = _sentinel,
    FieldValue? identityFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? giftCodes = _sentinel,
    FieldValue? giftCodesFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      surName == _sentinel || surNameFieldValue == null,
      "Cannot specify both surName and surNameFieldValue",
    );
    assert(
      identity == _sentinel || identityFieldValue == null,
      "Cannot specify both identity and identityFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      giftCodes == _sentinel || giftCodesFieldValue == null,
      "Cannot specify both giftCodes and giftCodesFieldValue",
    );
    final json = {
      if (name != _sentinel) _$ProfileFieldMap['name']!: name as String?,
      if (nameFieldValue != null) _$ProfileFieldMap['name']!: nameFieldValue,
      if (surName != _sentinel)
        _$ProfileFieldMap['surName']!: surName as String?,
      if (surNameFieldValue != null)
        _$ProfileFieldMap['surName']!: surNameFieldValue,
      if (identity != _sentinel)
        _$ProfileFieldMap['identity']!: identity as String?,
      if (identityFieldValue != null)
        _$ProfileFieldMap['identity']!: identityFieldValue,
      if (phoneNumber != _sentinel)
        _$ProfileFieldMap['phoneNumber']!: phoneNumber as String?,
      if (phoneNumberFieldValue != null)
        _$ProfileFieldMap['phoneNumber']!: phoneNumberFieldValue,
      if (email != _sentinel) _$ProfileFieldMap['email']!: email as String?,
      if (emailFieldValue != null) _$ProfileFieldMap['email']!: emailFieldValue,
      if (giftCodes != _sentinel)
        _$ProfileFieldMap['giftCodes']!: giftCodes as List<String?>?,
      if (giftCodesFieldValue != null)
        _$ProfileFieldMap['giftCodes']!: giftCodesFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? surName = _sentinel,
    FieldValue? surNameFieldValue,
    Object? identity = _sentinel,
    FieldValue? identityFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? giftCodes = _sentinel,
    FieldValue? giftCodesFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      surName == _sentinel || surNameFieldValue == null,
      "Cannot specify both surName and surNameFieldValue",
    );
    assert(
      identity == _sentinel || identityFieldValue == null,
      "Cannot specify both identity and identityFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      giftCodes == _sentinel || giftCodesFieldValue == null,
      "Cannot specify both giftCodes and giftCodesFieldValue",
    );
    final json = {
      if (name != _sentinel) _$ProfileFieldMap['name']!: name as String?,
      if (nameFieldValue != null) _$ProfileFieldMap['name']!: nameFieldValue,
      if (surName != _sentinel)
        _$ProfileFieldMap['surName']!: surName as String?,
      if (surNameFieldValue != null)
        _$ProfileFieldMap['surName']!: surNameFieldValue,
      if (identity != _sentinel)
        _$ProfileFieldMap['identity']!: identity as String?,
      if (identityFieldValue != null)
        _$ProfileFieldMap['identity']!: identityFieldValue,
      if (phoneNumber != _sentinel)
        _$ProfileFieldMap['phoneNumber']!: phoneNumber as String?,
      if (phoneNumberFieldValue != null)
        _$ProfileFieldMap['phoneNumber']!: phoneNumberFieldValue,
      if (email != _sentinel) _$ProfileFieldMap['email']!: email as String?,
      if (emailFieldValue != null) _$ProfileFieldMap['email']!: emailFieldValue,
      if (giftCodes != _sentinel)
        _$ProfileFieldMap['giftCodes']!: giftCodes as List<String?>?,
      if (giftCodesFieldValue != null)
        _$ProfileFieldMap['giftCodes']!: giftCodesFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ProfileQuery
    implements QueryReference<Profile, ProfileQuerySnapshot> {
  @override
  ProfileQuery limit(int limit);

  @override
  ProfileQuery limitToLast(int limit);

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
  ProfileQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
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
  ProfileQuery whereFieldPath(
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

  ProfileQuery whereDocumentId({
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
  ProfileQuery whereName({
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
  ProfileQuery whereSurName({
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
  ProfileQuery whereIdentity({
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
  ProfileQuery wherePhoneNumber({
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
  ProfileQuery whereEmail({
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
  ProfileQuery whereGiftCodes({
    List<String?>? isEqualTo,
    List<String?>? isNotEqualTo,
    List<String?>? isLessThan,
    List<String?>? isLessThanOrEqualTo,
    List<String?>? isGreaterThan,
    List<String?>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String?>? arrayContainsAny,
  });

  ProfileQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });

  ProfileQuery orderByName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });

  ProfileQuery orderBySurName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });

  ProfileQuery orderByIdentity({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });

  ProfileQuery orderByPhoneNumber({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });

  ProfileQuery orderByEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });

  ProfileQuery orderByGiftCodes({
    bool descending = false,
    List<String?>? startAt,
    List<String?>? startAfter,
    List<String?>? endAt,
    List<String?>? endBefore,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  });
}

class _$ProfileQuery extends QueryReference<Profile, ProfileQuerySnapshot>
    implements ProfileQuery {
  _$ProfileQuery(
    this._collection, {
    required Query<Profile> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ProfileQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ProfileQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ProfileQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProfileQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ProfileQuery limit(int limit) {
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProfileQuery limitToLast(int limit) {
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ProfileQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
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
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery whereFieldPath(
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
    return _$ProfileQuery(
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

  ProfileQuery whereDocumentId({
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
    return _$ProfileQuery(
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

  ProfileQuery whereName({
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
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProfileFieldMap['name']!,
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

  ProfileQuery whereSurName({
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
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProfileFieldMap['surName']!,
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

  ProfileQuery whereIdentity({
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
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProfileFieldMap['identity']!,
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

  ProfileQuery wherePhoneNumber({
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
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProfileFieldMap['phoneNumber']!,
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

  ProfileQuery whereEmail({
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
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProfileFieldMap['email']!,
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

  ProfileQuery whereGiftCodes({
    List<String?>? isEqualTo,
    List<String?>? isNotEqualTo,
    List<String?>? isLessThan,
    List<String?>? isLessThanOrEqualTo,
    List<String?>? isGreaterThan,
    List<String?>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String?>? arrayContainsAny,
  }) {
    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProfileFieldMap['giftCodes']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProfileQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProfileFieldMap['name']!,
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery orderBySurName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProfileFieldMap['surName']!,
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery orderByIdentity({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProfileFieldMap['identity']!, descending: descending);
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProfileFieldMap['phoneNumber']!, descending: descending);
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProfileFieldMap['email']!,
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProfileQuery orderByGiftCodes({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProfileDocumentSnapshot? startAtDocument,
    ProfileDocumentSnapshot? endAtDocument,
    ProfileDocumentSnapshot? endBeforeDocument,
    ProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProfileFieldMap['giftCodes']!, descending: descending);
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

    return _$ProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProfileQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ProfileDocumentSnapshot extends FirestoreDocumentSnapshot<Profile> {
  ProfileDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Profile> snapshot;

  @override
  ProfileDocumentReference get reference {
    return ProfileDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Profile? data;
}

class ProfileQuerySnapshot
    extends FirestoreQuerySnapshot<Profile, ProfileQueryDocumentSnapshot> {
  ProfileQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ProfileQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Profile> snapshot,
  ) {
    final docs = snapshot.docs.map(ProfileQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ProfileDocumentSnapshot._,
      );
    }).toList();

    return ProfileQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ProfileDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ProfileDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ProfileDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Profile> snapshot;

  @override
  final List<ProfileQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ProfileDocumentSnapshot>> docChanges;
}

class ProfileQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Profile>
    implements ProfileDocumentSnapshot {
  ProfileQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Profile> snapshot;

  @override
  final Profile data;

  @override
  ProfileDocumentReference get reference {
    return ProfileDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AddressBookCollectionReference
    implements
        AddressBookQuery,
        FirestoreCollectionReference<AddressBook, AddressBookQuerySnapshot> {
  factory AddressBookCollectionReference(
    DocumentReference<Profile> parent,
  ) = _$AddressBookCollectionReference;

  static AddressBook fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return AddressBook.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    AddressBook value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<AddressBook> get reference;

  /// A reference to the containing [ProfileDocumentReference] if this is a subcollection.
  ProfileDocumentReference get parent;

  @override
  AddressBookDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AddressBookDocumentReference> add(AddressBook value);
}

class _$AddressBookCollectionReference extends _$AddressBookQuery
    implements AddressBookCollectionReference {
  factory _$AddressBookCollectionReference(
    DocumentReference<Profile> parent,
  ) {
    return _$AddressBookCollectionReference._(
      ProfileDocumentReference(parent),
      parent.collection('addressbooks').withConverter(
            fromFirestore: AddressBookCollectionReference.fromFirestore,
            toFirestore: AddressBookCollectionReference.toFirestore,
          ),
    );
  }

  _$AddressBookCollectionReference._(
    this.parent,
    CollectionReference<AddressBook> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final ProfileDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<AddressBook> get reference =>
      super.reference as CollectionReference<AddressBook>;

  @override
  AddressBookDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AddressBookDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AddressBookDocumentReference> add(AddressBook value) {
    return reference
        .add(value)
        .then((ref) => AddressBookDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AddressBookCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AddressBookDocumentReference extends FirestoreDocumentReference<
    AddressBook, AddressBookDocumentSnapshot> {
  factory AddressBookDocumentReference(
          DocumentReference<AddressBook> reference) =
      _$AddressBookDocumentReference;

  DocumentReference<AddressBook> get reference;

  /// A reference to the [AddressBookCollectionReference] containing this document.
  AddressBookCollectionReference get parent {
    return _$AddressBookCollectionReference(
      reference.parent.parent!.withConverter<Profile>(
        fromFirestore: ProfileCollectionReference.fromFirestore,
        toFirestore: ProfileCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AddressBookDocumentSnapshot> snapshots();

  @override
  Future<AddressBookDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? addressType,
    FieldValue addressTypeFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String? addressTitle,
    FieldValue addressTitleFieldValue,
    String? apartmentName,
    FieldValue apartmentNameFieldValue,
    String? floor,
    FieldValue floorFieldValue,
    String? apartmentNumber,
    FieldValue apartmentNumberFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
    String? neighbourhood,
    FieldValue neighbourhoodFieldValue,
    String? province,
    FieldValue provinceFieldValue,
    String? district,
    FieldValue districtFieldValue,
    String? descriptionOfTheAddress,
    FieldValue descriptionOfTheAddressFieldValue,
    int? postCode,
    FieldValue postCodeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? addressType,
    FieldValue addressTypeFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String? addressTitle,
    FieldValue addressTitleFieldValue,
    String? apartmentName,
    FieldValue apartmentNameFieldValue,
    String? floor,
    FieldValue floorFieldValue,
    String? apartmentNumber,
    FieldValue apartmentNumberFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
    String? neighbourhood,
    FieldValue neighbourhoodFieldValue,
    String? province,
    FieldValue provinceFieldValue,
    String? district,
    FieldValue districtFieldValue,
    String? descriptionOfTheAddress,
    FieldValue descriptionOfTheAddressFieldValue,
    int? postCode,
    FieldValue postCodeFieldValue,
  });
}

class _$AddressBookDocumentReference
    extends FirestoreDocumentReference<AddressBook, AddressBookDocumentSnapshot>
    implements AddressBookDocumentReference {
  _$AddressBookDocumentReference(this.reference);

  @override
  final DocumentReference<AddressBook> reference;

  /// A reference to the [AddressBookCollectionReference] containing this document.
  AddressBookCollectionReference get parent {
    return _$AddressBookCollectionReference(
      reference.parent.parent!.withConverter<Profile>(
        fromFirestore: ProfileCollectionReference.fromFirestore,
        toFirestore: ProfileCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AddressBookDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AddressBookDocumentSnapshot._);
  }

  @override
  Future<AddressBookDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AddressBookDocumentSnapshot._);
  }

  @override
  Future<AddressBookDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AddressBookDocumentSnapshot._);
  }

  Future<void> update({
    Object? addressType = _sentinel,
    FieldValue? addressTypeFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? addressTitle = _sentinel,
    FieldValue? addressTitleFieldValue,
    Object? apartmentName = _sentinel,
    FieldValue? apartmentNameFieldValue,
    Object? floor = _sentinel,
    FieldValue? floorFieldValue,
    Object? apartmentNumber = _sentinel,
    FieldValue? apartmentNumberFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
    Object? neighbourhood = _sentinel,
    FieldValue? neighbourhoodFieldValue,
    Object? province = _sentinel,
    FieldValue? provinceFieldValue,
    Object? district = _sentinel,
    FieldValue? districtFieldValue,
    Object? descriptionOfTheAddress = _sentinel,
    FieldValue? descriptionOfTheAddressFieldValue,
    Object? postCode = _sentinel,
    FieldValue? postCodeFieldValue,
  }) async {
    assert(
      addressType == _sentinel || addressTypeFieldValue == null,
      "Cannot specify both addressType and addressTypeFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      addressTitle == _sentinel || addressTitleFieldValue == null,
      "Cannot specify both addressTitle and addressTitleFieldValue",
    );
    assert(
      apartmentName == _sentinel || apartmentNameFieldValue == null,
      "Cannot specify both apartmentName and apartmentNameFieldValue",
    );
    assert(
      floor == _sentinel || floorFieldValue == null,
      "Cannot specify both floor and floorFieldValue",
    );
    assert(
      apartmentNumber == _sentinel || apartmentNumberFieldValue == null,
      "Cannot specify both apartmentNumber and apartmentNumberFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    assert(
      neighbourhood == _sentinel || neighbourhoodFieldValue == null,
      "Cannot specify both neighbourhood and neighbourhoodFieldValue",
    );
    assert(
      province == _sentinel || provinceFieldValue == null,
      "Cannot specify both province and provinceFieldValue",
    );
    assert(
      district == _sentinel || districtFieldValue == null,
      "Cannot specify both district and districtFieldValue",
    );
    assert(
      descriptionOfTheAddress == _sentinel ||
          descriptionOfTheAddressFieldValue == null,
      "Cannot specify both descriptionOfTheAddress and descriptionOfTheAddressFieldValue",
    );
    assert(
      postCode == _sentinel || postCodeFieldValue == null,
      "Cannot specify both postCode and postCodeFieldValue",
    );
    final json = {
      if (addressType != _sentinel)
        _$AddressBookFieldMap['addressType']!: addressType as String?,
      if (addressTypeFieldValue != null)
        _$AddressBookFieldMap['addressType']!: addressTypeFieldValue,
      if (address != _sentinel)
        _$AddressBookFieldMap['address']!: address as String?,
      if (addressFieldValue != null)
        _$AddressBookFieldMap['address']!: addressFieldValue,
      if (addressTitle != _sentinel)
        _$AddressBookFieldMap['addressTitle']!: addressTitle as String?,
      if (addressTitleFieldValue != null)
        _$AddressBookFieldMap['addressTitle']!: addressTitleFieldValue,
      if (apartmentName != _sentinel)
        _$AddressBookFieldMap['apartmentName']!: apartmentName as String?,
      if (apartmentNameFieldValue != null)
        _$AddressBookFieldMap['apartmentName']!: apartmentNameFieldValue,
      if (floor != _sentinel) _$AddressBookFieldMap['floor']!: floor as String?,
      if (floorFieldValue != null)
        _$AddressBookFieldMap['floor']!: floorFieldValue,
      if (apartmentNumber != _sentinel)
        _$AddressBookFieldMap['apartmentNumber']!: apartmentNumber as String?,
      if (apartmentNumberFieldValue != null)
        _$AddressBookFieldMap['apartmentNumber']!: apartmentNumberFieldValue,
      if (phoneNumber != _sentinel)
        _$AddressBookFieldMap['phoneNumber']!: phoneNumber as String?,
      if (phoneNumberFieldValue != null)
        _$AddressBookFieldMap['phoneNumber']!: phoneNumberFieldValue,
      if (neighbourhood != _sentinel)
        _$AddressBookFieldMap['neighbourhood']!: neighbourhood as String?,
      if (neighbourhoodFieldValue != null)
        _$AddressBookFieldMap['neighbourhood']!: neighbourhoodFieldValue,
      if (province != _sentinel)
        _$AddressBookFieldMap['province']!: province as String?,
      if (provinceFieldValue != null)
        _$AddressBookFieldMap['province']!: provinceFieldValue,
      if (district != _sentinel)
        _$AddressBookFieldMap['district']!: district as String?,
      if (districtFieldValue != null)
        _$AddressBookFieldMap['district']!: districtFieldValue,
      if (descriptionOfTheAddress != _sentinel)
        _$AddressBookFieldMap['descriptionOfTheAddress']!:
            descriptionOfTheAddress as String?,
      if (descriptionOfTheAddressFieldValue != null)
        _$AddressBookFieldMap['descriptionOfTheAddress']!:
            descriptionOfTheAddressFieldValue,
      if (postCode != _sentinel)
        _$AddressBookFieldMap['postCode']!: postCode as int?,
      if (postCodeFieldValue != null)
        _$AddressBookFieldMap['postCode']!: postCodeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? addressType = _sentinel,
    FieldValue? addressTypeFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? addressTitle = _sentinel,
    FieldValue? addressTitleFieldValue,
    Object? apartmentName = _sentinel,
    FieldValue? apartmentNameFieldValue,
    Object? floor = _sentinel,
    FieldValue? floorFieldValue,
    Object? apartmentNumber = _sentinel,
    FieldValue? apartmentNumberFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
    Object? neighbourhood = _sentinel,
    FieldValue? neighbourhoodFieldValue,
    Object? province = _sentinel,
    FieldValue? provinceFieldValue,
    Object? district = _sentinel,
    FieldValue? districtFieldValue,
    Object? descriptionOfTheAddress = _sentinel,
    FieldValue? descriptionOfTheAddressFieldValue,
    Object? postCode = _sentinel,
    FieldValue? postCodeFieldValue,
  }) {
    assert(
      addressType == _sentinel || addressTypeFieldValue == null,
      "Cannot specify both addressType and addressTypeFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      addressTitle == _sentinel || addressTitleFieldValue == null,
      "Cannot specify both addressTitle and addressTitleFieldValue",
    );
    assert(
      apartmentName == _sentinel || apartmentNameFieldValue == null,
      "Cannot specify both apartmentName and apartmentNameFieldValue",
    );
    assert(
      floor == _sentinel || floorFieldValue == null,
      "Cannot specify both floor and floorFieldValue",
    );
    assert(
      apartmentNumber == _sentinel || apartmentNumberFieldValue == null,
      "Cannot specify both apartmentNumber and apartmentNumberFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    assert(
      neighbourhood == _sentinel || neighbourhoodFieldValue == null,
      "Cannot specify both neighbourhood and neighbourhoodFieldValue",
    );
    assert(
      province == _sentinel || provinceFieldValue == null,
      "Cannot specify both province and provinceFieldValue",
    );
    assert(
      district == _sentinel || districtFieldValue == null,
      "Cannot specify both district and districtFieldValue",
    );
    assert(
      descriptionOfTheAddress == _sentinel ||
          descriptionOfTheAddressFieldValue == null,
      "Cannot specify both descriptionOfTheAddress and descriptionOfTheAddressFieldValue",
    );
    assert(
      postCode == _sentinel || postCodeFieldValue == null,
      "Cannot specify both postCode and postCodeFieldValue",
    );
    final json = {
      if (addressType != _sentinel)
        _$AddressBookFieldMap['addressType']!: addressType as String?,
      if (addressTypeFieldValue != null)
        _$AddressBookFieldMap['addressType']!: addressTypeFieldValue,
      if (address != _sentinel)
        _$AddressBookFieldMap['address']!: address as String?,
      if (addressFieldValue != null)
        _$AddressBookFieldMap['address']!: addressFieldValue,
      if (addressTitle != _sentinel)
        _$AddressBookFieldMap['addressTitle']!: addressTitle as String?,
      if (addressTitleFieldValue != null)
        _$AddressBookFieldMap['addressTitle']!: addressTitleFieldValue,
      if (apartmentName != _sentinel)
        _$AddressBookFieldMap['apartmentName']!: apartmentName as String?,
      if (apartmentNameFieldValue != null)
        _$AddressBookFieldMap['apartmentName']!: apartmentNameFieldValue,
      if (floor != _sentinel) _$AddressBookFieldMap['floor']!: floor as String?,
      if (floorFieldValue != null)
        _$AddressBookFieldMap['floor']!: floorFieldValue,
      if (apartmentNumber != _sentinel)
        _$AddressBookFieldMap['apartmentNumber']!: apartmentNumber as String?,
      if (apartmentNumberFieldValue != null)
        _$AddressBookFieldMap['apartmentNumber']!: apartmentNumberFieldValue,
      if (phoneNumber != _sentinel)
        _$AddressBookFieldMap['phoneNumber']!: phoneNumber as String?,
      if (phoneNumberFieldValue != null)
        _$AddressBookFieldMap['phoneNumber']!: phoneNumberFieldValue,
      if (neighbourhood != _sentinel)
        _$AddressBookFieldMap['neighbourhood']!: neighbourhood as String?,
      if (neighbourhoodFieldValue != null)
        _$AddressBookFieldMap['neighbourhood']!: neighbourhoodFieldValue,
      if (province != _sentinel)
        _$AddressBookFieldMap['province']!: province as String?,
      if (provinceFieldValue != null)
        _$AddressBookFieldMap['province']!: provinceFieldValue,
      if (district != _sentinel)
        _$AddressBookFieldMap['district']!: district as String?,
      if (districtFieldValue != null)
        _$AddressBookFieldMap['district']!: districtFieldValue,
      if (descriptionOfTheAddress != _sentinel)
        _$AddressBookFieldMap['descriptionOfTheAddress']!:
            descriptionOfTheAddress as String?,
      if (descriptionOfTheAddressFieldValue != null)
        _$AddressBookFieldMap['descriptionOfTheAddress']!:
            descriptionOfTheAddressFieldValue,
      if (postCode != _sentinel)
        _$AddressBookFieldMap['postCode']!: postCode as int?,
      if (postCodeFieldValue != null)
        _$AddressBookFieldMap['postCode']!: postCodeFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AddressBookDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AddressBookQuery
    implements QueryReference<AddressBook, AddressBookQuerySnapshot> {
  @override
  AddressBookQuery limit(int limit);

  @override
  AddressBookQuery limitToLast(int limit);

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
  AddressBookQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
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
  AddressBookQuery whereFieldPath(
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

  AddressBookQuery whereDocumentId({
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
  AddressBookQuery whereAddressType({
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
  AddressBookQuery whereAddress({
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
  AddressBookQuery whereAddressTitle({
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
  AddressBookQuery whereApartmentName({
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
  AddressBookQuery whereFloor({
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
  AddressBookQuery whereApartmentNumber({
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
  AddressBookQuery wherePhoneNumber({
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
  AddressBookQuery whereNeighbourhood({
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
  AddressBookQuery whereProvince({
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
  AddressBookQuery whereDistrict({
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
  AddressBookQuery whereDescriptionOfTheAddress({
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
  AddressBookQuery wherePostCode({
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

  AddressBookQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByAddressType({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByAddress({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByAddressTitle({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByApartmentName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByFloor({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByApartmentNumber({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByPhoneNumber({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByNeighbourhood({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByProvince({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByDistrict({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByDescriptionOfTheAddress({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });

  AddressBookQuery orderByPostCode({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  });
}

class _$AddressBookQuery
    extends QueryReference<AddressBook, AddressBookQuerySnapshot>
    implements AddressBookQuery {
  _$AddressBookQuery(
    this._collection, {
    required Query<AddressBook> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AddressBookQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AddressBookQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AddressBookQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AddressBookQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AddressBookQuery limit(int limit) {
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AddressBookQuery limitToLast(int limit) {
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  AddressBookQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery whereFieldPath(
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
    return _$AddressBookQuery(
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

  AddressBookQuery whereDocumentId({
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
    return _$AddressBookQuery(
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

  AddressBookQuery whereAddressType({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['addressType']!,
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

  AddressBookQuery whereAddress({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['address']!,
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

  AddressBookQuery whereAddressTitle({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['addressTitle']!,
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

  AddressBookQuery whereApartmentName({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['apartmentName']!,
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

  AddressBookQuery whereFloor({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['floor']!,
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

  AddressBookQuery whereApartmentNumber({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['apartmentNumber']!,
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

  AddressBookQuery wherePhoneNumber({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['phoneNumber']!,
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

  AddressBookQuery whereNeighbourhood({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['neighbourhood']!,
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

  AddressBookQuery whereProvince({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['province']!,
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

  AddressBookQuery whereDistrict({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['district']!,
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

  AddressBookQuery whereDescriptionOfTheAddress({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['descriptionOfTheAddress']!,
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

  AddressBookQuery wherePostCode({
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
    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AddressBookFieldMap['postCode']!,
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

  AddressBookQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByAddressType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['addressType']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['address']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByAddressTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AddressBookFieldMap['addressTitle']!,
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByApartmentName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AddressBookFieldMap['apartmentName']!,
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByFloor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['floor']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByApartmentNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AddressBookFieldMap['apartmentNumber']!,
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['phoneNumber']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByNeighbourhood({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AddressBookFieldMap['neighbourhood']!,
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByProvince({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['province']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByDistrict({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['district']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByDescriptionOfTheAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AddressBookFieldMap['descriptionOfTheAddress']!,
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AddressBookQuery orderByPostCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AddressBookDocumentSnapshot? startAtDocument,
    AddressBookDocumentSnapshot? endAtDocument,
    AddressBookDocumentSnapshot? endBeforeDocument,
    AddressBookDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AddressBookFieldMap['postCode']!, descending: descending);
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

    return _$AddressBookQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AddressBookQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AddressBookDocumentSnapshot
    extends FirestoreDocumentSnapshot<AddressBook> {
  AddressBookDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AddressBook> snapshot;

  @override
  AddressBookDocumentReference get reference {
    return AddressBookDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AddressBook? data;
}

class AddressBookQuerySnapshot extends FirestoreQuerySnapshot<AddressBook,
    AddressBookQueryDocumentSnapshot> {
  AddressBookQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AddressBookQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AddressBook> snapshot,
  ) {
    final docs = snapshot.docs.map(AddressBookQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AddressBookDocumentSnapshot._,
      );
    }).toList();

    return AddressBookQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AddressBookDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AddressBookDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AddressBookDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AddressBook> snapshot;

  @override
  final List<AddressBookQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AddressBookDocumentSnapshot>> docChanges;
}

class AddressBookQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AddressBook>
    implements AddressBookDocumentSnapshot {
  AddressBookQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AddressBook> snapshot;

  @override
  final AddressBook data;

  @override
  AddressBookDocumentReference get reference {
    return AddressBookDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertAddressBook(AddressBook instance) {
  const Min(1).validate(instance.postCode, 'postCode');
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['id'] as String?,
      addressBook: (json['addressBook'] as List<dynamic>)
          .map((e) => AddressBook.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      surName: json['surName'] as String?,
      identity: json['identity'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      giftCodes: (json['giftCodes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

const _$ProfileFieldMap = <String, String>{
  'id': 'id',
  'addressBook': 'addressBook',
  'name': 'name',
  'surName': 'surName',
  'identity': 'identity',
  'phoneNumber': 'phoneNumber',
  'email': 'email',
  'giftCodes': 'giftCodes',
};

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'addressBook': instance.addressBook.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'surName': instance.surName,
      'identity': instance.identity,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'giftCodes': instance.giftCodes,
    };

AddressBook _$AddressBookFromJson(Map<String, dynamic> json) => AddressBook(
      id: json['id'] as String?,
      address: json['address'] as String?,
      addressType: json['addressType'] as String?,
      addressTitle: json['addressTitle'] as String?,
      neighbourhood: json['neighbourhood'] as String?,
      apartmentName: json['apartmentName'] as String?,
      floor: json['floor'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      postCode: json['postCode'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      province: json['province'] as String?,
      district: json['district'] as String?,
      descriptionOfTheAddress: json['descriptionOfTheAddress'] as String?,
    );

const _$AddressBookFieldMap = <String, String>{
  'id': 'id',
  'addressType': 'addressType',
  'address': 'address',
  'addressTitle': 'addressTitle',
  'apartmentName': 'apartmentName',
  'floor': 'floor',
  'apartmentNumber': 'apartmentNumber',
  'phoneNumber': 'phoneNumber',
  'neighbourhood': 'neighbourhood',
  'province': 'province',
  'district': 'district',
  'descriptionOfTheAddress': 'descriptionOfTheAddress',
  'postCode': 'postCode',
};

Map<String, dynamic> _$AddressBookToJson(AddressBook instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addressType': instance.addressType,
      'address': instance.address,
      'addressTitle': instance.addressTitle,
      'apartmentName': instance.apartmentName,
      'floor': instance.floor,
      'apartmentNumber': instance.apartmentNumber,
      'phoneNumber': instance.phoneNumber,
      'neighbourhood': instance.neighbourhood,
      'province': instance.province,
      'district': instance.district,
      'descriptionOfTheAddress': instance.descriptionOfTheAddress,
      'postCode': instance.postCode,
    };

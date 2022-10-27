// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book.dart';

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
abstract class AddressBookCollectionReference
    implements
        AddressBookQuery,
        FirestoreCollectionReference<AddressBook, AddressBookQuerySnapshot> {
  factory AddressBookCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$AddressBookCollectionReference;

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

  @override
  AddressBookDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AddressBookDocumentReference> add(AddressBook value);
}

class _$AddressBookCollectionReference extends _$AddressBookQuery
    implements AddressBookCollectionReference {
  factory _$AddressBookCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$AddressBookCollectionReference._(
      firestore.collection('addressbooks').withConverter(
            fromFirestore: AddressBookCollectionReference.fromFirestore,
            toFirestore: AddressBookCollectionReference.toFirestore,
          ),
    );
  }

  _$AddressBookCollectionReference._(
    CollectionReference<AddressBook> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

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
    return _$AddressBookCollectionReference(reference.firestore);
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
    return _$AddressBookCollectionReference(reference.firestore);
  }

  @override
  Stream<AddressBookDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return AddressBookDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<AddressBookDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return AddressBookDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<AddressBookDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then((snapshot) {
      return AddressBookDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
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
      if (addressType != _sentinel) 'addressType': addressType as String?,
      if (addressTypeFieldValue != null) 'addressType': addressTypeFieldValue,
      if (address != _sentinel) 'address': address as String?,
      if (addressFieldValue != null) 'address': addressFieldValue,
      if (addressTitle != _sentinel) 'addressTitle': addressTitle as String?,
      if (addressTitleFieldValue != null)
        'addressTitle': addressTitleFieldValue,
      if (apartmentName != _sentinel) 'apartmentName': apartmentName as String?,
      if (apartmentNameFieldValue != null)
        'apartmentName': apartmentNameFieldValue,
      if (floor != _sentinel) 'floor': floor as String?,
      if (floorFieldValue != null) 'floor': floorFieldValue,
      if (apartmentNumber != _sentinel)
        'apartmentNumber': apartmentNumber as String?,
      if (apartmentNumberFieldValue != null)
        'apartmentNumber': apartmentNumberFieldValue,
      if (phoneNumber != _sentinel) 'phoneNumber': phoneNumber as String?,
      if (phoneNumberFieldValue != null) 'phoneNumber': phoneNumberFieldValue,
      if (neighbourhood != _sentinel) 'neighbourhood': neighbourhood as String?,
      if (neighbourhoodFieldValue != null)
        'neighbourhood': neighbourhoodFieldValue,
      if (province != _sentinel) 'province': province as String?,
      if (provinceFieldValue != null) 'province': provinceFieldValue,
      if (district != _sentinel) 'district': district as String?,
      if (districtFieldValue != null) 'district': districtFieldValue,
      if (descriptionOfTheAddress != _sentinel)
        'descriptionOfTheAddress': descriptionOfTheAddress as String?,
      if (descriptionOfTheAddressFieldValue != null)
        'descriptionOfTheAddress': descriptionOfTheAddressFieldValue,
      if (postCode != _sentinel) 'postCode': postCode as int?,
      if (postCodeFieldValue != null) 'postCode': postCodeFieldValue,
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
      if (addressType != _sentinel) 'addressType': addressType as String?,
      if (addressTypeFieldValue != null) 'addressType': addressTypeFieldValue,
      if (address != _sentinel) 'address': address as String?,
      if (addressFieldValue != null) 'address': addressFieldValue,
      if (addressTitle != _sentinel) 'addressTitle': addressTitle as String?,
      if (addressTitleFieldValue != null)
        'addressTitle': addressTitleFieldValue,
      if (apartmentName != _sentinel) 'apartmentName': apartmentName as String?,
      if (apartmentNameFieldValue != null)
        'apartmentName': apartmentNameFieldValue,
      if (floor != _sentinel) 'floor': floor as String?,
      if (floorFieldValue != null) 'floor': floorFieldValue,
      if (apartmentNumber != _sentinel)
        'apartmentNumber': apartmentNumber as String?,
      if (apartmentNumberFieldValue != null)
        'apartmentNumber': apartmentNumberFieldValue,
      if (phoneNumber != _sentinel) 'phoneNumber': phoneNumber as String?,
      if (phoneNumberFieldValue != null) 'phoneNumber': phoneNumberFieldValue,
      if (neighbourhood != _sentinel) 'neighbourhood': neighbourhood as String?,
      if (neighbourhoodFieldValue != null)
        'neighbourhood': neighbourhoodFieldValue,
      if (province != _sentinel) 'province': province as String?,
      if (provinceFieldValue != null) 'province': provinceFieldValue,
      if (district != _sentinel) 'district': district as String?,
      if (districtFieldValue != null) 'district': districtFieldValue,
      if (descriptionOfTheAddress != _sentinel)
        'descriptionOfTheAddress': descriptionOfTheAddress as String?,
      if (descriptionOfTheAddressFieldValue != null)
        'descriptionOfTheAddress': descriptionOfTheAddressFieldValue,
      if (postCode != _sentinel) 'postCode': postCode as int?,
      if (postCodeFieldValue != null) 'postCode': postCodeFieldValue,
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

class AddressBookDocumentSnapshot
    extends FirestoreDocumentSnapshot<AddressBook> {
  AddressBookDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

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

  AddressBookQuerySnapshot _decodeSnapshot(
    QuerySnapshot<AddressBook> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return AddressBookQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<AddressBookDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: AddressBookDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return AddressBookQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<AddressBookQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<AddressBookQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
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

class AddressBookQuerySnapshot extends FirestoreQuerySnapshot<AddressBook,
    AddressBookQueryDocumentSnapshot> {
  AddressBookQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<AddressBook> snapshot;

  @override
  final List<AddressBookQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AddressBookDocumentSnapshot>> docChanges;
}

class AddressBookQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AddressBook>
    implements AddressBookDocumentSnapshot {
  AddressBookQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<AddressBook> snapshot;

  @override
  AddressBookDocumentReference get reference {
    return AddressBookDocumentReference(snapshot.reference);
  }

  @override
  final AddressBook data;
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

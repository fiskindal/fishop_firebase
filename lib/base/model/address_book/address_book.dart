import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'address_book.g.dart';

@Collection<AddressBook>('addressbooks')
final addressBookRef = AddressBookCollectionReference();

@JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
)
class AddressBook {
  AddressBook({
    required this.id,
    required this.address,
    required this.addressType,
    required this.addressTitle,
    this.neighbourhood,
    this.apartmentName,
    this.floor,
    required this.apartmentNumber,
    required this.postCode,
    required this.phoneNumber,
    required this.province,
    this.district,
    this.descriptionOfTheAddress,
  }) {
    _$assertAddressBook(this);
  }
  @Id()
  final String? id;
  final String? addressType;
  final String? address;
  final String? addressTitle;
  final String? apartmentName;
  final String? floor;
  final String? apartmentNumber;
  final String? phoneNumber;
  final String? neighbourhood;
  final String? province;
  final String? district;
  final String? descriptionOfTheAddress;
  @Min(1)
  final int? postCode;

  factory AddressBook.fromJson(Map<String, Object?> json) =>
      _$AddressBookFromJson(json);
  Map<String, Object?> toJson() => _$AddressBookToJson(this);
}

import 'package:fishop_firebase/fishop_firebase.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'profile.g.dart';

final profileRef = ProfileCollectionReference();

@Collection<Profile>('profiles')
@Collection<AddressBook>('profiles/*/addressbooks')
@JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
)
class Profile {
  Profile(
      {required this.id,
      required this.addressBook,
      required this.name,
      required this.surName,
      required this.identity,
      this.phoneNumber,
      this.email,
      this.giftCodes});
  @Id()
  final String? id;
  final List<AddressBook> addressBook;
  final String? name;
  final String? surName;
  final String? identity;
  final String? phoneNumber;
  final String? email;
  final List<String?>? giftCodes;
  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
  Map<String, Object?> toJson() => _$ProfileToJson(this);
}

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

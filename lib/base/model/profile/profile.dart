import 'package:fishop_firebase/fishop_firebase.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'profile.g.dart';

@Collection<Profile>('profiles')
final profileRef = ProfileCollectionReference();

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
      this.email});
  @Id()
  final String? id;
  final List<AddressBook> addressBook;
  final String? name;
  final String? surName;
  final String? identity;
  final String? phoneNumber;
  final String? email;
  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
  Map<String, Object?> toJson() => _$ProfileToJson(this);
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  bool hasHeight() => _height != null;

  // "ethnicity" field.
  String? _ethnicity;
  String get ethnicity => _ethnicity ?? '';
  bool hasEthnicity() => _ethnicity != null;

  // "education" field.
  String? _education;
  String get education => _education ?? '';
  bool hasEducation() => _education != null;

  // "job" field.
  String? _job;
  String get job => _job ?? '';
  bool hasJob() => _job != null;

  // "income" field.
  int? _income;
  int get income => _income ?? 0;
  bool hasIncome() => _income != null;

  // "body_type" field.
  String? _bodyType;
  String get bodyType => _bodyType ?? '';
  bool hasBodyType() => _bodyType != null;

  // "diet" field.
  String? _diet;
  String get diet => _diet ?? '';
  bool hasDiet() => _diet != null;

  // "drugs" field.
  String? _drugs;
  String get drugs => _drugs ?? '';
  bool hasDrugs() => _drugs != null;

  // "drinks" field.
  String? _drinks;
  String get drinks => _drinks ?? '';
  bool hasDrinks() => _drinks != null;

  // "smokes" field.
  String? _smokes;
  String get smokes => _smokes ?? '';
  bool hasSmokes() => _smokes != null;

  // "pets" field.
  String? _pets;
  String get pets => _pets ?? '';
  bool hasPets() => _pets != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  bool hasReligion() => _religion != null;

  // "sign" field.
  String? _sign;
  String get sign => _sign ?? '';
  bool hasSign() => _sign != null;

  // "speaks" field.
  String? _speaks;
  String get speaks => _speaks ?? '';
  bool hasSpeaks() => _speaks != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "orientation" field.
  String? _orientation;
  String get orientation => _orientation ?? '';
  bool hasOrientation() => _orientation != null;

  // "offspring" field.
  String? _offspring;
  String get offspring => _offspring ?? '';
  bool hasOffspring() => _offspring != null;

  // "essay0" field.
  String? _essay0;
  String get essay0 => _essay0 ?? '';
  bool hasEssay0() => _essay0 != null;

  // "essay1" field.
  String? _essay1;
  String get essay1 => _essay1 ?? '';
  bool hasEssay1() => _essay1 != null;

  // "essay2" field.
  String? _essay2;
  String get essay2 => _essay2 ?? '';
  bool hasEssay2() => _essay2 != null;

  // "essay3" field.
  String? _essay3;
  String get essay3 => _essay3 ?? '';
  bool hasEssay3() => _essay3 != null;

  // "essay4" field.
  String? _essay4;
  String get essay4 => _essay4 ?? '';
  bool hasEssay4() => _essay4 != null;

  // "essay5" field.
  String? _essay5;
  String get essay5 => _essay5 ?? '';
  bool hasEssay5() => _essay5 != null;

  // "essay6" field.
  String? _essay6;
  String get essay6 => _essay6 ?? '';
  bool hasEssay6() => _essay6 != null;

  // "essay7" field.
  String? _essay7;
  String get essay7 => _essay7 ?? '';
  bool hasEssay7() => _essay7 != null;

  // "essay8" field.
  String? _essay8;
  String get essay8 => _essay8 ?? '';
  bool hasEssay8() => _essay8 != null;

  // "essay9" field.
  String? _essay9;
  String get essay9 => _essay9 ?? '';
  bool hasEssay9() => _essay9 != null;

  void _initializeFields() {
    _sex = snapshotData['sex'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _height = castToType<int>(snapshotData['height']);
    _ethnicity = snapshotData['ethnicity'] as String?;
    _education = snapshotData['education'] as String?;
    _job = snapshotData['job'] as String?;
    _income = castToType<int>(snapshotData['income']);
    _bodyType = snapshotData['body_type'] as String?;
    _diet = snapshotData['diet'] as String?;
    _drugs = snapshotData['drugs'] as String?;
    _drinks = snapshotData['drinks'] as String?;
    _smokes = snapshotData['smokes'] as String?;
    _pets = snapshotData['pets'] as String?;
    _religion = snapshotData['religion'] as String?;
    _sign = snapshotData['sign'] as String?;
    _speaks = snapshotData['speaks'] as String?;
    _status = snapshotData['status'] as String?;
    _orientation = snapshotData['orientation'] as String?;
    _offspring = snapshotData['offspring'] as String?;
    _essay0 = snapshotData['essay0'] as String?;
    _essay1 = snapshotData['essay1'] as String?;
    _essay2 = snapshotData['essay2'] as String?;
    _essay3 = snapshotData['essay3'] as String?;
    _essay4 = snapshotData['essay4'] as String?;
    _essay5 = snapshotData['essay5'] as String?;
    _essay6 = snapshotData['essay6'] as String?;
    _essay7 = snapshotData['essay7'] as String?;
    _essay8 = snapshotData['essay8'] as String?;
    _essay9 = snapshotData['essay9'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? sex,
  int? age,
  int? height,
  String? ethnicity,
  String? education,
  String? job,
  int? income,
  String? bodyType,
  String? diet,
  String? drugs,
  String? drinks,
  String? smokes,
  String? pets,
  String? religion,
  String? sign,
  String? speaks,
  String? status,
  String? orientation,
  String? offspring,
  String? essay0,
  String? essay1,
  String? essay2,
  String? essay3,
  String? essay4,
  String? essay5,
  String? essay6,
  String? essay7,
  String? essay8,
  String? essay9,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sex': sex,
      'age': age,
      'height': height,
      'ethnicity': ethnicity,
      'education': education,
      'job': job,
      'income': income,
      'body_type': bodyType,
      'diet': diet,
      'drugs': drugs,
      'drinks': drinks,
      'smokes': smokes,
      'pets': pets,
      'religion': religion,
      'sign': sign,
      'speaks': speaks,
      'status': status,
      'orientation': orientation,
      'offspring': offspring,
      'essay0': essay0,
      'essay1': essay1,
      'essay2': essay2,
      'essay3': essay3,
      'essay4': essay4,
      'essay5': essay5,
      'essay6': essay6,
      'essay7': essay7,
      'essay8': essay8,
      'essay9': essay9,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.sex == e2?.sex &&
        e1?.age == e2?.age &&
        e1?.height == e2?.height &&
        e1?.ethnicity == e2?.ethnicity &&
        e1?.education == e2?.education &&
        e1?.job == e2?.job &&
        e1?.income == e2?.income &&
        e1?.bodyType == e2?.bodyType &&
        e1?.diet == e2?.diet &&
        e1?.drugs == e2?.drugs &&
        e1?.drinks == e2?.drinks &&
        e1?.smokes == e2?.smokes &&
        e1?.pets == e2?.pets &&
        e1?.religion == e2?.religion &&
        e1?.sign == e2?.sign &&
        e1?.speaks == e2?.speaks &&
        e1?.status == e2?.status &&
        e1?.orientation == e2?.orientation &&
        e1?.offspring == e2?.offspring &&
        e1?.essay0 == e2?.essay0 &&
        e1?.essay1 == e2?.essay1 &&
        e1?.essay2 == e2?.essay2 &&
        e1?.essay3 == e2?.essay3 &&
        e1?.essay4 == e2?.essay4 &&
        e1?.essay5 == e2?.essay5 &&
        e1?.essay6 == e2?.essay6 &&
        e1?.essay7 == e2?.essay7 &&
        e1?.essay8 == e2?.essay8 &&
        e1?.essay9 == e2?.essay9;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.sex,
        e?.age,
        e?.height,
        e?.ethnicity,
        e?.education,
        e?.job,
        e?.income,
        e?.bodyType,
        e?.diet,
        e?.drugs,
        e?.drinks,
        e?.smokes,
        e?.pets,
        e?.religion,
        e?.sign,
        e?.speaks,
        e?.status,
        e?.orientation,
        e?.offspring,
        e?.essay0,
        e?.essay1,
        e?.essay2,
        e?.essay3,
        e?.essay4,
        e?.essay5,
        e?.essay6,
        e?.essay7,
        e?.essay8,
        e?.essay9
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

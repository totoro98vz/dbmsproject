import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupStatsRecord extends FirestoreRecord {
  GroupStatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UserID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "avg_age" field.
  int? _avgAge;
  int get avgAge => _avgAge ?? 0;
  bool hasAvgAge() => _avgAge != null;

  // "avg_body_type" field.
  String? _avgBodyType;
  String get avgBodyType => _avgBodyType ?? '';
  bool hasAvgBodyType() => _avgBodyType != null;

  // "avg_diet" field.
  String? _avgDiet;
  String get avgDiet => _avgDiet ?? '';
  bool hasAvgDiet() => _avgDiet != null;

  // "avg_drinks" field.
  String? _avgDrinks;
  String get avgDrinks => _avgDrinks ?? '';
  bool hasAvgDrinks() => _avgDrinks != null;

  // "avg_drugs" field.
  String? _avgDrugs;
  String get avgDrugs => _avgDrugs ?? '';
  bool hasAvgDrugs() => _avgDrugs != null;

  // "avg_education" field.
  String? _avgEducation;
  String get avgEducation => _avgEducation ?? '';
  bool hasAvgEducation() => _avgEducation != null;

  // "avg_height" field.
  int? _avgHeight;
  int get avgHeight => _avgHeight ?? 0;
  bool hasAvgHeight() => _avgHeight != null;

  // "avg_income" field.
  int? _avgIncome;
  int get avgIncome => _avgIncome ?? 0;
  bool hasAvgIncome() => _avgIncome != null;

  // "avg_pets" field.
  String? _avgPets;
  String get avgPets => _avgPets ?? '';
  bool hasAvgPets() => _avgPets != null;

  // "avg_smokes" field.
  String? _avgSmokes;
  String get avgSmokes => _avgSmokes ?? '';
  bool hasAvgSmokes() => _avgSmokes != null;

  // "cluster" field.
  int? _cluster;
  int get cluster => _cluster ?? 0;
  bool hasCluster() => _cluster != null;

  void _initializeFields() {
    _userID = snapshotData['UserID'] as String?;
    _avgAge = castToType<int>(snapshotData['avg_age']);
    _avgBodyType = snapshotData['avg_body_type'] as String?;
    _avgDiet = snapshotData['avg_diet'] as String?;
    _avgDrinks = snapshotData['avg_drinks'] as String?;
    _avgDrugs = snapshotData['avg_drugs'] as String?;
    _avgEducation = snapshotData['avg_education'] as String?;
    _avgHeight = castToType<int>(snapshotData['avg_height']);
    _avgIncome = castToType<int>(snapshotData['avg_income']);
    _avgPets = snapshotData['avg_pets'] as String?;
    _avgSmokes = snapshotData['avg_smokes'] as String?;
    _cluster = castToType<int>(snapshotData['cluster']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Group_Stats');

  static Stream<GroupStatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupStatsRecord.fromSnapshot(s));

  static Future<GroupStatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupStatsRecord.fromSnapshot(s));

  static GroupStatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupStatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupStatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupStatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupStatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupStatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupStatsRecordData({
  String? userID,
  int? avgAge,
  String? avgBodyType,
  String? avgDiet,
  String? avgDrinks,
  String? avgDrugs,
  String? avgEducation,
  int? avgHeight,
  int? avgIncome,
  String? avgPets,
  String? avgSmokes,
  int? cluster,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserID': userID,
      'avg_age': avgAge,
      'avg_body_type': avgBodyType,
      'avg_diet': avgDiet,
      'avg_drinks': avgDrinks,
      'avg_drugs': avgDrugs,
      'avg_education': avgEducation,
      'avg_height': avgHeight,
      'avg_income': avgIncome,
      'avg_pets': avgPets,
      'avg_smokes': avgSmokes,
      'cluster': cluster,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupStatsRecordDocumentEquality implements Equality<GroupStatsRecord> {
  const GroupStatsRecordDocumentEquality();

  @override
  bool equals(GroupStatsRecord? e1, GroupStatsRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.avgAge == e2?.avgAge &&
        e1?.avgBodyType == e2?.avgBodyType &&
        e1?.avgDiet == e2?.avgDiet &&
        e1?.avgDrinks == e2?.avgDrinks &&
        e1?.avgDrugs == e2?.avgDrugs &&
        e1?.avgEducation == e2?.avgEducation &&
        e1?.avgHeight == e2?.avgHeight &&
        e1?.avgIncome == e2?.avgIncome &&
        e1?.avgPets == e2?.avgPets &&
        e1?.avgSmokes == e2?.avgSmokes &&
        e1?.cluster == e2?.cluster;
  }

  @override
  int hash(GroupStatsRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.avgAge,
        e?.avgBodyType,
        e?.avgDiet,
        e?.avgDrinks,
        e?.avgDrugs,
        e?.avgEducation,
        e?.avgHeight,
        e?.avgIncome,
        e?.avgPets,
        e?.avgSmokes,
        e?.cluster
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupStatsRecord;
}

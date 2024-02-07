import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ScheduleRecord extends FirestoreRecord {
  ScheduleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "occupied" field.
  List<DateTime>? _occupied;
  List<DateTime> get occupied => _occupied ?? const [];
  bool hasOccupied() => _occupied != null;

  // "free_space" field.
  List<DateTime>? _freeSpace;
  List<DateTime> get freeSpace => _freeSpace ?? const [];
  bool hasFreeSpace() => _freeSpace != null;

  void _initializeFields() {
    _occupied = getDataList(snapshotData['occupied']);
    _freeSpace = getDataList(snapshotData['free_space']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleRecord.fromSnapshot(s));

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleRecord.fromSnapshot(s));

  static ScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ScheduleRecordDocumentEquality implements Equality<ScheduleRecord> {
  const ScheduleRecordDocumentEquality();

  @override
  bool equals(ScheduleRecord? e1, ScheduleRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.occupied, e2?.occupied) &&
        listEquality.equals(e1?.freeSpace, e2?.freeSpace);
  }

  @override
  int hash(ScheduleRecord? e) =>
      const ListEquality().hash([e?.occupied, e?.freeSpace]);

  @override
  bool isValidKey(Object? o) => o is ScheduleRecord;
}

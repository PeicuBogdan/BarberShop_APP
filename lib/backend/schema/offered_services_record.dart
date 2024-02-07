import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OfferedServicesRecord extends FirestoreRecord {
  OfferedServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  List<String>? _title;
  List<String> get title => _title ?? const [];
  bool hasTitle() => _title != null;

  // "Price" field.
  List<String>? _price;
  List<String> get price => _price ?? const [];
  bool hasPrice() => _price != null;

  // "Duration" field.
  List<String>? _duration;
  List<String> get duration => _duration ?? const [];
  bool hasDuration() => _duration != null;

  void _initializeFields() {
    _title = getDataList(snapshotData['Title']);
    _price = getDataList(snapshotData['Price']);
    _duration = getDataList(snapshotData['Duration']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Offered_Services');

  static Stream<OfferedServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfferedServicesRecord.fromSnapshot(s));

  static Future<OfferedServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfferedServicesRecord.fromSnapshot(s));

  static OfferedServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfferedServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfferedServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfferedServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfferedServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfferedServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfferedServicesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class OfferedServicesRecordDocumentEquality
    implements Equality<OfferedServicesRecord> {
  const OfferedServicesRecordDocumentEquality();

  @override
  bool equals(OfferedServicesRecord? e1, OfferedServicesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.title, e2?.title) &&
        listEquality.equals(e1?.price, e2?.price) &&
        listEquality.equals(e1?.duration, e2?.duration);
  }

  @override
  int hash(OfferedServicesRecord? e) =>
      const ListEquality().hash([e?.title, e?.price, e?.duration]);

  @override
  bool isValidKey(Object? o) => o is OfferedServicesRecord;
}

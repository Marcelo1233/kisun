import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotosRecord extends FirestoreRecord {
  FotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fotos" field.
  String? _fotos;
  String get fotos => _fotos ?? '';
  bool hasFotos() => _fotos != null;

  void _initializeFields() {
    _fotos = snapshotData['fotos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fotos');

  static Stream<FotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FotosRecord.fromSnapshot(s));

  static Future<FotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FotosRecord.fromSnapshot(s));

  static FotosRecord fromSnapshot(DocumentSnapshot snapshot) => FotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFotosRecordData({
  String? fotos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fotos': fotos,
    }.withoutNulls,
  );

  return firestoreData;
}

class FotosRecordDocumentEquality implements Equality<FotosRecord> {
  const FotosRecordDocumentEquality();

  @override
  bool equals(FotosRecord? e1, FotosRecord? e2) {
    return e1?.fotos == e2?.fotos;
  }

  @override
  int hash(FotosRecord? e) => const ListEquality().hash([e?.fotos]);

  @override
  bool isValidKey(Object? o) => o is FotosRecord;
}

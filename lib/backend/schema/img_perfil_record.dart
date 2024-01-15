import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImgPerfilRecord extends FirestoreRecord {
  ImgPerfilRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ImgsPerfil" field.
  String? _imgsPerfil;
  String get imgsPerfil => _imgsPerfil ?? '';
  bool hasImgsPerfil() => _imgsPerfil != null;

  void _initializeFields() {
    _imgsPerfil = snapshotData['ImgsPerfil'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ImgPerfil');

  static Stream<ImgPerfilRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImgPerfilRecord.fromSnapshot(s));

  static Future<ImgPerfilRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImgPerfilRecord.fromSnapshot(s));

  static ImgPerfilRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImgPerfilRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImgPerfilRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImgPerfilRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImgPerfilRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImgPerfilRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImgPerfilRecordData({
  String? imgsPerfil,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ImgsPerfil': imgsPerfil,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImgPerfilRecordDocumentEquality implements Equality<ImgPerfilRecord> {
  const ImgPerfilRecordDocumentEquality();

  @override
  bool equals(ImgPerfilRecord? e1, ImgPerfilRecord? e2) {
    return e1?.imgsPerfil == e2?.imgsPerfil;
  }

  @override
  int hash(ImgPerfilRecord? e) => const ListEquality().hash([e?.imgsPerfil]);

  @override
  bool isValidKey(Object? o) => o is ImgPerfilRecord;
}

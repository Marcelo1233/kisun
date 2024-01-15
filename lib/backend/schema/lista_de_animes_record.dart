import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaDeAnimesRecord extends FirestoreRecord {
  ListaDeAnimesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "dublado" field.
  String? _dublado;
  String get dublado => _dublado ?? '';
  bool hasDublado() => _dublado != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _genero = snapshotData['Genero'] as String?;
    _image = snapshotData['image'] as String?;
    _dublado = snapshotData['dublado'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _nota = snapshotData['Nota'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListaDeAnimes');

  static Stream<ListaDeAnimesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListaDeAnimesRecord.fromSnapshot(s));

  static Future<ListaDeAnimesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListaDeAnimesRecord.fromSnapshot(s));

  static ListaDeAnimesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListaDeAnimesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListaDeAnimesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListaDeAnimesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListaDeAnimesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListaDeAnimesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListaDeAnimesRecordData({
  String? nome,
  String? genero,
  String? image,
  String? dublado,
  String? descricao,
  String? nota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Genero': genero,
      'image': image,
      'dublado': dublado,
      'descricao': descricao,
      'Nota': nota,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListaDeAnimesRecordDocumentEquality
    implements Equality<ListaDeAnimesRecord> {
  const ListaDeAnimesRecordDocumentEquality();

  @override
  bool equals(ListaDeAnimesRecord? e1, ListaDeAnimesRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.genero == e2?.genero &&
        e1?.image == e2?.image &&
        e1?.dublado == e2?.dublado &&
        e1?.descricao == e2?.descricao &&
        e1?.nota == e2?.nota;
  }

  @override
  int hash(ListaDeAnimesRecord? e) => const ListEquality()
      .hash([e?.nome, e?.genero, e?.image, e?.dublado, e?.descricao, e?.nota]);

  @override
  bool isValidKey(Object? o) => o is ListaDeAnimesRecord;
}

import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassesRecord extends FirestoreRecord {
  ClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "department_id" field.
  String? _departmentId;
  String get departmentId => _departmentId ?? '';
  bool hasDepartmentId() => _departmentId != null;

  // "instructor_id" field.
  String? _instructorId;
  String get instructorId => _instructorId ?? '';
  bool hasInstructorId() => _instructorId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _name = snapshotData['name'] as String?;
    _departmentId = snapshotData['department_id'] as String?;
    _instructorId = snapshotData['instructor_id'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassesRecord.fromSnapshot(s));

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassesRecord.fromSnapshot(s));

  static ClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createClassesRecordData({
  String? code,
  String? name,
  String? departmentId,
  String? instructorId,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'name': name,
      'department_id': departmentId,
      'instructor_id': instructorId,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

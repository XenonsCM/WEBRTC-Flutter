import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "last_edited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "task_id" field.
  String? _taskId;
  String get taskId => _taskId ?? '';
  bool hasTaskId() => _taskId != null;

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "assigned" field.
  String? _assigned;
  String get assigned => _assigned ?? '';
  bool hasAssigned() => _assigned != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _lastEdited = snapshotData['last_edited'] as DateTime?;
    _owner = snapshotData['owner'] as String?;
    _taskId = snapshotData['task_id'] as String?;
    _taskName = snapshotData['task_name'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _assigned = snapshotData['assigned'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createTasksRecordData({
  String? description,
  DateTime? lastEdited,
  String? owner,
  String? taskId,
  String? taskName,
  DateTime? timeCreated,
  String? status,
  String? assigned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'last_edited': lastEdited,
      'owner': owner,
      'task_id': taskId,
      'task_name': taskName,
      'time_created': timeCreated,
      'status': status,
      'assigned': assigned,
    }.withoutNulls,
  );

  return firestoreData;
}

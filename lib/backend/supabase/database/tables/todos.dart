import '../database.dart';

class TodosTable extends SupabaseTable<TodosRow> {
  @override
  String get tableName => 'todos';

  @override
  TodosRow createRow(Map<String, dynamic> data) => TodosRow(data);
}

class TodosRow extends SupabaseDataRow {
  TodosRow(super.data);

  @override
  SupabaseTable get table => TodosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  bool get completed => getField<bool>('completed')!;
  set completed(bool value) => setField<bool>('completed', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  String get listId => getField<String>('list_id')!;
  set listId(String value) => setField<String>('list_id', value);
}

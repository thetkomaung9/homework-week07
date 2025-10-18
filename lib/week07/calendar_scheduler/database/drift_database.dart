import 'package:myapp/week07/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'drift_database.g.dart';

@DriftDatabase(
  tables: [Schedules],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  // Watch schedules for a specific date
  Stream<List<Schedule>> watchSchedules(DateTime date) {
    return (select(schedules)..where((tbl) => tbl.date.equals(date))).watch();
  }

  // Insert schedule
  Future<int> createSchedule(SchedulesCompanion data) =>
      into(schedules).insert(data);

  // Delete schedule
  Future<int> removeSchedule(int id) =>
      (delete(schedules)..where((tbl) => tbl.id.equals(id))).go();

  @override
  int get schemaVersion => 1;
}

// Database connection
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

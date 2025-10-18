import 'package:myapp/week07/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';


part 'drift_database.g.dart';

@DriftDatabase(
  tables:[
    Schedules,
  ],
)
class LocalDatabase extends _$LocalDatabase{
  LocalDatabase() : super(_openConnection());

  Stream<List<Schedule>> watchSchedules(DateTime data) =>

  (select(schedules)..where((tbl)))
}
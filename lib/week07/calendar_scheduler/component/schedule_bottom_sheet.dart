import 'package:myapp/week07/calendar_scheduler/component/custom_text_field.dart';
import 'package:myapp/week07/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

import 'package:drift/drift.dart' hide Column;
import 'package:get_it/get_it.dart';
import 'package:myapp/week07/calendar_scheduler/database/drift_database.dart';

class ScheduleBottomSheet extends StatefulWidget{
  final DateTime selectedDate;

  const ScheduleBottomSheet({
    required this.selectedDate,
    Key? key,
  }) : super(key: key);

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet>{
  final GlobalKey<FormState> formKey = GlobalKey();

  int? startTime;
  int? endTime;
  String? content;

  @override
  Widget build(BuildContext context){

    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Form(
      key: formKey,
      child: SafeArea(
        child: Container(

          height: MediaQuery.of(context).size.height / 2 + bottomInset,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset),
            child: ,
          ),
        ),
      ),
    )
  }
}
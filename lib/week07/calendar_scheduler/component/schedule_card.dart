import 'package:myapp/week07/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';


class ScheduleCard extends StatelessWidget{
  final int startTime;
  final int endTime;
  final String content;

  const ScheduleCard({
    required this.startTime,
    required this.endTime,
    required this.content,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: PRIMARY_COLOR,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            _Time(
              startTime: startTime,
              endTime: endTime,
            ),
            SizedBox(width: 16.0),
            _Content(
              content: content,
            ),
            SizedBox(width: 16.0),
          ],
        ),
      ),
    ),
    );
  }
}


import 'package:myapp/week07/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class TodayBanner  extends StatelessWidget{
  final DateTime selectedDate;
  final int count;

  const TodayBanner({
    required this.selectedDate,
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    )
  }
}
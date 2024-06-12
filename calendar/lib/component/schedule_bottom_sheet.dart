import 'package:flutter/material.dart';

class ScheduleBottomSheeet extends StatefulWidget {
  ScheduleBottomSheeet({Key? key}) : super(key: key);

  @override
  State<ScheduleBottomSheeet> createState() => _ScheduleBottomSheeetState();

}

class _ScheduleBottomSheeetState extends State<ScheduleBottomSheeet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.white,
      ),
    );
  }
}


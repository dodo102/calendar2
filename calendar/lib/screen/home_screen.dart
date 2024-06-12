import 'package:calendar/component/main_calendar.dart';
import 'package:flutter/material.dart';
import 'package:calendar/component/schedule.dart';
import 'package:calendar/component/schedule_bottom_sheet.dart';
import 'package:calendar/component/today_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super (key: key);


  @override
  State<HomeScreen> createState() => _HomeScreemState();

class _HomeScreemState extends State<HomeScreen>{
  late DateTime selectedDate;

  @override
  void initState() {
    
  }
}


}
class _HomeScreemState extends State<HomeScreen>{
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainCalender(onDaySelected: _onDaySelected, selectedDate: selectedDate),
            SizedBox(height: 8,),

            SizedBox(height: 8,),
            ScheduleCard(startTime: 12, endTime: 14, content: "프로그래밍"),
          ],
        ),
      ),
    );
  }




  void _onDaySelected(DateTime newSelectedDate, DateTime focusedDate) {
    setState((){
      selectedDate = newSelectedDate;
    });
  }
}

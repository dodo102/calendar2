import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:calendar/const/colors.dart';


class MainCalender extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;


  MainCalender({
    required this.onDaySelected,
    required this.selectedDate
  });


  @override
  Widget build(BuildContext context){
    return TableCalendar(
      onDaySelected: onDaySelected,
      //날짜 선택시 실행 함수
      selectedDayPredicate: (date) => date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,
      firstDay: DateTime(1800,1,1),
      lastDay: DateTime(3000,1,1),
      focusedDay: DateTime.now(),
      headerStyle: HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false, //달력크기 선택 옵션 ㄴㄴ
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0
          )
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
        ),
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
        ),
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: PRIMARY_COLOR,
            width: 1.0,
          ),
        ),
        defaultTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        weekendTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        selectedTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: PRIMARY_COLOR,
        ),
      ),
    );
  }
}

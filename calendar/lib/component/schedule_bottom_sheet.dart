import 'package:flutter/material.dart';
import 'package:calendar/component/custom_text_field.dart';
import 'package:flutter/services.dart';

class ScheduleBottomSheeet extends StatefulWidget {

  const ScheduleBottomSheeet({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: CustomTextField(
                      label: '시작 시간',
                      isTime: true,
                    ),),
                    const SizedBox(width: 16.0,),
                    Expanded(child: CustomTextField(
                      label: '종료 시간',
                      isTime: true,
                    ),),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}


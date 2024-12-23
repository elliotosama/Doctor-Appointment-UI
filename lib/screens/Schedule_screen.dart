import 'package:doctor_application/screens/Canceled_schedule.dart';
import 'package:doctor_application/screens/Completed_schedule.dart';
import 'package:doctor_application/screens/Upcoming_schedule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _Schedulewidgets = [
    UpcomingSchedule(),
    CompletedSchedule(),
    CanceledSchedule(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Schedule",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xfff4f6fa),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, spreadRadius: 2, blurRadius: 4)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 0;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            color: _buttonIndex == 0
                                ? Colors.red
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: _buttonIndex == 0
                                  ? Colors.white
                                  : Colors.black38),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            color: _buttonIndex == 1
                                ? Colors.red
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: _buttonIndex == 1
                                  ? Colors.white
                                  : Colors.black38),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 2;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            color: _buttonIndex == 2
                                ? Colors.red
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Canceled",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: _buttonIndex == 2
                                  ? Colors.white
                                  : Colors.black38),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              _Schedulewidgets[_buttonIndex]
            ],
          ),
        ),
      ),
    );
  }
}

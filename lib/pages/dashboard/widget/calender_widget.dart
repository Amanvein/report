import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2010),
            lastDay: DateTime.utc(2040),
            headerVisible: false,
            onFormatChanged: (result) {},
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextFormatter: (date, locale) {
                return DateFormat("EEE").format(date).toUpperCase();
              },
              weekendStyle: TextStyle(fontWeight: FontWeight.bold),
              weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPageChanged: (day) {
              _focusedDay = day;
              setState(() {});
            },
            eventLoader: (day) {
              ///make event on 22 and 12 date every month
              if (day.day == 22 || day.day == 12) {
                return [Event("Event Name", canBubble: true)];
              }
              return [];
            },
          )
        ],
      ),
    );
  }
}

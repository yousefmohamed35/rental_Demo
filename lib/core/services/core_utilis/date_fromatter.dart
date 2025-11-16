import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatDate(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);
  DateFormat format = DateFormat(
    'yyyy/MM/dd',
  );
  String formattedDate = format.format(dateTime);
  return formattedDate;
}

String formateTime(String dateString, String? pattern) {
  try {
    DateTime dateTime = DateTime.parse(dateString);
    DateFormat format = DateFormat(pattern);
    String formattedDate = format.format(dateTime);
    return formattedDate;
  } catch (e) {
    // Handle errors if the dateString is invalid
    return 'Invalid date';
  }
}

String formatTimeInEnglish(TimeOfDay time) {
  final DateTime now = DateTime.now();
  final DateTime selectedTime =
      DateTime(now.year, now.month, now.day, time.hour, time.minute);
  final DateFormat timeFormat = DateFormat.jm('en');
  return timeFormat.format(selectedTime);
}

String formatTimeTaked(String arrived, String exit) {
  final arriveTime = DateTime.tryParse(arrived);
  final leaveTime = DateTime.tryParse(exit);

  if (arriveTime == null || leaveTime == null) return "--";

  final visitDuration = leaveTime.difference(arriveTime);

  final totalSeconds = visitDuration.inSeconds;
  final hours = totalSeconds ~/ 3600;
  final minutes = (totalSeconds % 3600) ~/ 60;
  final seconds = totalSeconds % 60;

  return "${hours}h ${minutes}m ${seconds}s";
}
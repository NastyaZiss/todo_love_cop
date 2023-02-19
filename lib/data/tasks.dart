import 'package:flutter/material.dart';

class Task {
  String tasknumber;
  String title;
  Color progresscolor;
  double value;

  Task(
      {required this.tasknumber,
      required this.title,
      required this.progresscolor,
      required this.value});
}

List<Task> tasklist = [
  Task(
      tasknumber: "40 tasks",
      title: "По работе",
      progresscolor: const Color(0xFFAC05FF),
      value: 0.5),
  Task(
      tasknumber: "16 tasks",
      title: "Личное",
      progresscolor: Colors.blue,
      value: 0.1),
  Task(
      tasknumber: "10 tasks",
      title: "Учеба",
      progresscolor: Colors.green,
      value: 0.1),
  Task(
      tasknumber: "2 tasks",
      title: "Спорт",
      progresscolor: Colors.red,
      value: 0.1),
  Task(
      tasknumber: "30 tasks",
      title: "Семья и дом",
      progresscolor: Colors.orange,
      value: 0.8),
];

import 'package:flutter/material.dart';

class Timecall extends StatelessWidget {
  String text = "";
  int nowtime = DateTime.now().hour;
  String time_call() {
    if (nowtime <= 11) {
      text = "Доброе утро  ☀️";
    }
    if (nowtime > 11) {
      text = "Добрый день  🌞";
    }
    if (nowtime >= 16) {
      text = "Добрый вечер  🌆";
    }
    if (nowtime >= 18) {
      text = "Сладких снов  🌙";
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      time_call(),
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 27,
      ),
    ));
  }
}

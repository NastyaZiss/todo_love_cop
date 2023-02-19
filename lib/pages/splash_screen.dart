import 'dart:async';

import 'package:flutter/material.dart';

import 'Drawerhiden/hidendrawer.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HidenDrawer()));
    });
    return Scaffold(
      body: Center(
          child: Container(width: 90, child: Image.asset('assets/logo.png'))),
      // AssetImage("Avatar.jpg")
    );
  }
}

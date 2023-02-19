import 'package:flutter/material.dart';
import 'package:todo_love/pages/homepage.dart';

import '../Animation/fadeAnimation.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPegeState();
}

class _PersonPegeState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              'Ваш Данные',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
          ),
        ],
      )),
      floatingActionButton: FadeAnimation(
        delay: 1.2,
        child: FloatingActionButton(
          onPressed: () async {
            await Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          backgroundColor:
              const FloatingActionButtonThemeData().backgroundColor,
          child: const Icon(Icons.output_outlined),
        ),
      ),
    );
  }
}

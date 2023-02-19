import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Animation/fadeAnimation.dart';
import 'Drawerhiden/hidendrawer.dart';
import 'account_page.dart';

class RegisPage extends StatefulWidget {
  const RegisPage({super.key});

  @override
  State<RegisPage> createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              // Icon(
              //   color: Color.fromARGB(255, 190, 196, 215),
              //   Icons.person_add_alt,
              //   size: 150,
              // ),
              Text(
                'Регистрация',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        // width: 90,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF00FF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Регистрация',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 111, 136, 250),
                            // border: Border.all(
                            //     width: 2,
                            //     color: Color.fromARGB(255, 189, 1, 189)),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Вход',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 190, 196, 215),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Color(0xFF002FFF)),
                        filled: true,
                        fillColor: Color(0xffF4F6FD),
                        // helperText: 'Введите ваш Email',
                        // helperStyle:
                        //     TextStyle(color: Color.fromARGB(255, 73, 87, 86)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Color(0xFF002FFF), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 102, 97, 237),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Пароль',

                        labelStyle: TextStyle(color: Color(0xFF002FFF)),
                        filled: true,
                        fillColor: Color(0xffF4F6FD),
                        // helperText: 'Введите ваш Email',
                        // helperStyle:
                        //     TextStyle(color: Color.fromARGB(255, 73, 87, 86)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Color(0xFF002FFF), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 102, 97, 237),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HidenDrawer()));
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        minimumSize:
                            MaterialStateProperty.all(const Size(200, 50)),
                        foregroundColor: getColor(
                            Color.fromARGB(255, 255, 255, 255),
                            Color(0xFFFF00FF)),
                        backgroundColor:
                            getColor(Color(0xFF002FFF), Color(0xFFFF00FF)),
                      ),
                      child: Text(
                        "Готово",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // selectionColor: Colors.black,
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FadeAnimation(
        delay: 1.2,
        child: FloatingActionButton(
          onPressed: () async {
            await Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HidenDrawer()));
          },
          backgroundColor:
              const FloatingActionButtonThemeData().backgroundColor,
          child: const Icon(Icons.output_outlined),
        ),
      ),
    );
  }
  // Get.defaultDialog(
  //             title: "GeeksforGeeks",
  //             middleText: "Hello world!",
  //             backgroundColor: Colors.green,
  //             titleStyle: TextStyle(color: Colors.white),
  //             middleTextStyle: TextStyle(color: Colors.white),

  //           );

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}

import 'package:flutter/material.dart';
import 'package:number_facts/ui/search_bar.dart';
import 'buttons.dart';
import 'content.dart';

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

const bgColor = Color(0xff2B2D42);
const myBlue = Color(0xff6D77F6);
const myPurple = Color(0xff9C43F8);

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NumberFacts',
      theme: ThemeData(primarySwatch: white, scaffoldBackgroundColor: bgColor),
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text('Number Facts',
                        style: TextStyle(
                            fontSize: 30, color: Colors.white, fontFamily: 'Sen')),
                    Content(),
                    SearchBar(),
                    Buttons(),
                  ])),
        ),
      ),
    );
  }
}

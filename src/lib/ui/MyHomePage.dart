import 'package:flutter/material.dart';
import 'package:number_facts/ui/search.dart';

import 'content.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
              Text('Number Facts',
                  style: TextStyle(
                      fontSize: 30, color: Colors.white, fontFamily: 'Sen')),
              Content(),
              Search()
            ])),
      ),
    );
  }
}

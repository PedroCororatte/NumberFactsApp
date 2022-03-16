import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _Content();
  }
}

class _Content extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height/3,
        child: Consumer<Search>(
            builder: (context, provider, child) => Center(
              child: Text(provider.result,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.white70)),
            )));
  }
}

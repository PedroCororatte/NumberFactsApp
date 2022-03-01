import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(25),
        child: const Text(
            "42 is the number of little squares forming the left side trail of Microsoft's Windows 98 logo.",
            style: TextStyle(color: Colors.grey, fontSize: 16)));
  }
}

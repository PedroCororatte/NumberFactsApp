import 'package:flutter/material.dart';
import 'package:number_facts/ui/search_bar.dart';
import 'package:number_facts/controller.dart';

final sc = Search();

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
    return AnimatedBuilder(
      animation: sc,
      builder: (context,_) {
        return Column(
          children: [
            Container(
                padding: const EdgeInsets.all(25),
                child: Text(
                    sc.result,
                    style: const TextStyle(color: Colors.grey, fontSize: 16))),
          ],
        );
      }
    );
  }
}

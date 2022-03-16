import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller.dart';
import 'app.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Search>(context);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: () {
              provider.setedSearch();
            },
            label: const Icon(
              Icons.search,
              size: 30,
            ),
            icon: const Text('Search', style: TextStyle(fontSize: 18)),
            style: ElevatedButton.styleFrom(
                primary: myBlue, minimumSize: const Size(150, 50)),
          ),
          ElevatedButton.icon(
            onPressed: () {
              provider.randomSearch();
            },
            label: const Icon(Icons.casino_outlined, size: 30),
            icon: const Text('Random', style: TextStyle(fontSize: 18)),
            style: ElevatedButton.styleFrom(
                primary: myPurple, minimumSize: const Size(150, 50)),
          )
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:number_facts/ui/MyApp.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          padding: const EdgeInsets.all(20),
          child: TextField(
            style: const TextStyle(color: white),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: white),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Type a number',
                hintStyle: const TextStyle(color: Colors.grey)),
          )),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        ElevatedButton.icon(
          onPressed: () {},
          label: const Icon(
            Icons.search,
            size: 30,
          ),
          icon: const Text('Search', style: TextStyle(fontSize: 18)),
          style: ElevatedButton.styleFrom(
              primary: myBlue, minimumSize: const Size(150, 50)),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Icon(Icons.casino_outlined, size: 30),
          icon: const Text('Random', style: TextStyle(fontSize: 18)),
          style: ElevatedButton.styleFrom(
              primary: myPurple, minimumSize: const Size(150, 50)),
        )
      ])
    ]);
  }
}

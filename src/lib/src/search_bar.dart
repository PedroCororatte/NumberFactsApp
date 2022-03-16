import 'package:flutter/material.dart';
import 'package:number_facts/main.dart';
import 'package:number_facts/ui/app.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
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

    ]);
  }
}

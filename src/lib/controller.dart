import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Search extends ChangeNotifier {
  String link = 'http://numbersapi.com/';
  String result = 'Discover a instesting fact about number';
  final textController = TextEditingController();
  var response;

  Future setedSearch() async {
    var url = Uri.parse(link + textController.text);
    var response = await http.get(url);
    print(response.contentLength);
    if (response.statusCode == 200) {
      if (response.contentLength! >= 17000) {
        result = 'Type a valid Number';
      } else {
        result = response.body;
      }
      notifyListeners();
    }
  }

  Future randomSearch() async {
    var url = Uri.parse(link + 'random/trivia');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      result = response.body;
      notifyListeners();
    }
  }
}

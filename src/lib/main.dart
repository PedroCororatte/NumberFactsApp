import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';
import 'controller.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => Search(),
      child: const App()
  ));
}

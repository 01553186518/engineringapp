
import 'package:flutter/material.dart';

import 'calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ESTech Calendar",
      home: Calendar(),
    );
  }
}

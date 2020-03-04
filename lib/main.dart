import 'package:flutter/material.dart';
import 'package:events/widgets/eventList.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "M Events",
      home: EventList(),
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
    );
  }
}



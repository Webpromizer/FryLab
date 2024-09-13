import 'package:flutter/material.dart';
import 'package:fry_lab/components/blue_button_list.dart';
import 'package:fry_lab/components/input_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fry Journey',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _FryJourneyState createState() => _FryJourneyState();
}

class _FryJourneyState extends State<HomePage> {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fryjourney'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: _buildVerticalWidgets(buildContext),
        ),
      ),
    );
  }

  List<Widget> _buildVerticalWidgets(BuildContext buildContext) {
    return [
      buildInputList(buildContext),
      ...buildBlueButtons(buildContext),
    ];
  }
}

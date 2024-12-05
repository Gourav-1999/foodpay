import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => HelpPageState();
}

class HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Text("Help!"),
      ),
    ));
  }
}

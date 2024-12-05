import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => AboutUsPageState();
}

class AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Text("AboutUs!"),
      ),
    ));
  }
}

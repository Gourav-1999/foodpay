
import 'package:flutter/material.dart';

import 'package:foodpay/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme
    //     .of(context)
    //     .textTheme;
    return MaterialApp(
      color: Colors.orange,
      debugShowCheckedModeBanner: false,
      title: 'FoodPay',
      theme: ThemeData(

        // textTheme: GoogleFonts.robotoTextTheme(textTheme).copyWith(
        //   bodyMedium: GoogleFonts.acme(textStyle: textTheme.bodyMedium),),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: WelcomePage()
    );
  }
}


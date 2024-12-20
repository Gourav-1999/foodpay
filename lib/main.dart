
import 'package:flutter/material.dart';
import 'package:foodpay/cart_page.dart';
import 'package:foodpay/favourite.dart';
import 'package:foodpay/home_page.dart';
import 'package:foodpay/order_page.dart';
import 'package:foodpay/order_payment_confirm_page.dart';
import 'package:foodpay/payment_details.dart';
import 'package:foodpay/profile_page.dart';
import 'package:foodpay/track_order_page.dart';

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
      routes: {

         '/second': (context) => OrderPayment(),
         '/third': (context) => Order(),
         '/fourth': (context) => TrackOrder(),
      },
      home: WelcomePage()
    );
  }
}


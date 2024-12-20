import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodpay/cart_page.dart';
import 'package:foodpay/order_payment_confirm_page.dart';
import 'package:foodpay/track_order_page.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
         children: [
           _appBar(context),
           const SizedBox(height: 20,),
           const Column(crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Image(image: AssetImage("assets/welcome_images/order.png"),color: Colors.orange,),
               SizedBox(height: 20,),
               Text("Your Order has been\nplaced!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),maxLines: 2,textAlign: TextAlign.center,),
             ],
           ),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(bottom: 20),
             child: _trackButton,
           )
         ],
        ),
      ),
    ));
  }
}
Widget _appBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Center(
      child: const Text(
        textAlign: TextAlign.center,
        "Order",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    ),
  );
}

Widget get _trackButton => SizedBox(
  height: 40,
  width: 380,
  child: Builder(builder: (context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ), // Background color
        ),
        onPressed: () {
          Navigator
              .of(context)
              .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) {
            return new TrackOrder();
          }));
        },
        child: const Text(
          "Track Order",
          style: TextStyle(
              color: Colors.white, overflow: TextOverflow.ellipsis),
          maxLines: 1,
        ));
  }),
);

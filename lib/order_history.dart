import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => OrderHistoryState();
}

class OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Text("Order History!"),
      ),
    ));
  }
}

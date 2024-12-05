import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => PaymentDetailsState();
}

class PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Text("Payment Details!"),
      ),
    ));
  }
}

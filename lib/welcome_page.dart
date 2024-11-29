import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:foodpay/create_account_page.dart';

import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    const FoodPay()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        color: Colors.orange,
        child: const Text("FoodPay",style: TextStyle(fontSize: 30,color: Colors.white),)
    );
  }
}
class FoodPay extends StatelessWidget {
  const FoodPay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingSlider(
          controllerColor: Colors.orange,
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          onFinish: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const CreateAccountPage(),
              ),
            );
          },
          finishButtonStyle: const FinishButtonStyle(
            backgroundColor: Colors.white,
          ),
          skipTextButton: const Text(
            "Skip",
            maxLines: 1,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.orange,
                decorationColor: Colors.orange,
                decorationThickness: 1),
          ),
          trailing: const Text(
            'Login',
            maxLines: 1,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.orange,
                decorationColor: Colors.orange,
                decorationThickness: 2),
          ),
          trailingFunction: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          background: [
            Image.asset(
              'assets/images/panda1.png',
              height: 400,
            ),
            Image.asset(
              'assets/images/panda.png',
              height: 400,
            ),
            Image.asset(
              'assets/images/order.png',
              height: 400,
            ),
          ],
          totalPage: 3,
          speed: 1.8,
          pageBodies: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Column(
                children: <Widget>[
                  SizedBox(
                    height: 420,
                  ),
                  Text(
                    'Welcome to Food Pay App',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(textAlign: TextAlign.center,
                      "This app helps you to get best dishes quickly and in time from nearest restaurant.")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Column(
                children: <Widget>[
                  SizedBox(
                    height: 420,
                  ),
                  Text(
                    'Fastest Delivery',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                      "We offer 40 minutes delivery guarantee or the food will be delivered free.")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Column(
                children: <Widget>[
                  SizedBox(
                    height: 420,
                  ),
                  Text(
                    'Ordering and Payment',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(textAlign: TextAlign.center,
                      "Your order will be immediately collected and sent by our courier and ordering method is very easy.")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

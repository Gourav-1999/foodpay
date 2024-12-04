import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPage();
}

class _CreateAccountPage extends State<CreateAccountPage> {
  bool passwordVisible = false;
  bool? value = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _foodImageModel,
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Let's get start",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
            const Text(
              "Create an account",
              style: TextStyle(
                  color: Colors.grey,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            const SizedBox(height: 15),
            _nameFieldModel,
            _emailFieldModel,
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                obscureText: passwordVisible,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      color: Colors.grey, overflow: TextOverflow.ellipsis),
                  hintMaxLines: 1,
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                obscureText: passwordVisible,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                      color: Colors.grey, overflow: TextOverflow.ellipsis),
                  hintMaxLines: 1,
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            _sentOTPButton,
            const SizedBox(
              height: 15,
            ),
            const Text(
              "-- or Sign in with --",
              style: TextStyle(
                  color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            _facebookGoogleLogoModal,
            const SizedBox(
              height: 15,
            ),
            _signUpLink
          ],
        ),
      ),
    ));
  }
}

Widget get _foodImageModel => Container(
      margin: const EdgeInsets.only(top: 70, right: 10),
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/meal.png'), fit: BoxFit.contain),
      ),
      child: Container(
          margin: EdgeInsets.only(left: 25),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/pizzaslice.png'),
                fit: BoxFit.contain),
          )),
    );

Widget get _nameFieldModel => const Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(
              Icons.person_2_outlined,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(),
            hintText: 'Name',
            hintStyle:
                TextStyle(color: Colors.grey, overflow: TextOverflow.ellipsis)),
        maxLines: 1,
      ),
    );

Widget get _emailFieldModel => const Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(),
            hintText: 'Enter your email or phone number',
            hintStyle:
                TextStyle(color: Colors.grey, overflow: TextOverflow.ellipsis)),
        maxLines: 1,
      ),
    );

Widget get _sentOTPButton => SizedBox(
      height: 40,
      width: 380,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ), // Background color
          ),
          onPressed: () {},
          child: const Text(
            "Send OTP",
            style:
                TextStyle(color: Colors.white, overflow: TextOverflow.ellipsis),
            maxLines: 1,
          )),
    );

Widget get _facebookGoogleLogoModal => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            print("hi");
          },
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.blue),
                image: const DecorationImage(
                    image: AssetImage('assets/icons/Facebook.png'),
                    fit: BoxFit.cover),
              )),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            print("hi");
          },
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.orange),
                image: const DecorationImage(
                    image: AssetImage('assets/icons/google.png'),
                    fit: BoxFit.cover),
              )),
        ),
      ],
    );

Widget get _signUpLink => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Dont't have an account?",
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          maxLines: 1,
        ),
        GestureDetector(
            onTap: () {},
            child: const Text(
              " Sign up",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
              maxLines: 1,
            ))
      ],
    );

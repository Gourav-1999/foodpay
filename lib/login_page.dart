import 'package:flutter/material.dart';
import 'package:foodpay/create_account_page.dart';
import 'package:foodpay/foodpay.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

final Map<String, String> userData = {
  "name": "gourav@",
  "password": "Qwert@123",
};

final _formKey = GlobalKey<FormState>();
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginPage extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool? value = false;

  bool passwordVisible = false;

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
          child: Column(children: [
            _foodImageModel,
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
            const Text(
              "Sign in to your existing account",
              style: TextStyle(
                  color: Colors.grey,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Builder(builder: (context) {
                return Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            controller: username,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            maxLines: 1,
                            validator: (CurrentValue) {
                              if (CurrentValue == userData['name']) {
                                return null;
                              }
                              if (CurrentValue!.isEmpty) {
                                return ("username is required");
                              } else {
                                return "Incorrect user name";
                              }
                            },
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            controller: password,
                            validator: (PassCurrentValue) {
                              RegExp regex = RegExp(
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                              // var passNonNullValue=PassCurrentValue??"";
                              if (PassCurrentValue!.isEmpty) {
                                return ("Password is required");
                              }
                              if (PassCurrentValue == '${userData['password']}') {
                                return null;
                              } else if (PassCurrentValue.length < 6) {
                                return ("Password Must be more than 5 characters");
                              } else if (!regex.hasMatch(PassCurrentValue)) {
                                return ("Password should contain upper,lower,digit and Special character ");
                              }
                              return "Incorrect password";
                            },
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
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis),
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
                        ]));
              }),
            ),
            Row(
              children: [
                Checkbox(
                  tristate: true, // Example with tristate
                  value: value,
                  onChanged: (bool? newValue) {
                    setState(() {
                      value = newValue;
                    });
                  },
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                    ))
              ],
            ),
            _signInButton,
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
          ]),
        ),
      ),
    );
  }
}

Widget get _foodImageModel => Container(
      margin: const EdgeInsets.only(top: 70, right: 10),
      height: 200,
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

Widget get _signInButton => SizedBox(
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
              if (_formKey.currentState!.validate()) {
                // TODO submit
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => FoodPay(),
                  ),
                      (Route<dynamic> route) => false,
                );
              }
            },
            child: const Text(
              "Sign in",
              style: TextStyle(
                  color: Colors.white, overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ));
      }),
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

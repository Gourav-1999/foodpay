import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodpay/foodpay.dart';
import 'package:foodpay/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  int index;
  String title;


  CustomAppBar({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(

        margin: const EdgeInsets.only(top: 10),


        child: index == 1
            ? Row(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodPay(),
                          ));
                    },
                    icon: const Icon(Icons.arrow_back_ios,),
                  ),
                  

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 35),
                      child: Text(
                        textAlign: TextAlign.center,
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),

                ],
              )
            : index == 2
                ?Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodPay(),
                    ));
              },
              icon: const Icon(Icons.arrow_back_ios,),
            ),


            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 35),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),

          ],
        )
                : index==3?Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodPay(),
                              ));
                        },
                        icon: const Icon(Icons.arrow_back_ios, size: 20),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 35),
                          child: Text(
                                                  textAlign: TextAlign.center,
                                                  title,
                                                  style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                                                  ),
                                                ),
                        ),
                      ),
                    ],
                  ):Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
            Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )),
          ],
        )

        );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

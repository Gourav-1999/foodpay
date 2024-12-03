import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodpay/foodpay.dart';
import 'package:foodpay/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  int index;
  String title;

  // List<IconData> whatsAppIcons = [
  //   Icons.camera_alt_outlined,
  //   Icons.more_vert_outlined
  // ];
  // List<IconData> updatesIcons = [
  //   Icons.qr_code_scanner_outlined,
  //   Icons.camera_alt_outlined,
  //   Icons.search,
  //   Icons.more_vert_outlined
  // ];
  // List<IconData> communityIcons = [
  //   Icons.qr_code_scanner_outlined,
  //   Icons.camera_alt_outlined,
  //   Icons.more_vert_outlined
  // ];
  // List<IconData> callsIcons = [
  //   Icons.qr_code_scanner_outlined,
  //   Icons.camera_alt_outlined,
  //   Icons.search,
  //   Icons.more_vert_outlined
  // ];

  CustomAppBar({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      margin: const EdgeInsets.only(top: 10),
      //padding: const EdgeInsets.only(top: 10),

      child: index == 1
          ? Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton( onPressed: () { print("object"); }, icon: const Icon(Icons.arrow_back_ios,size: 20),),
          SizedBox(width: 110,),
          Text(textAlign: TextAlign.center,
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
               ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(whatsAppIcons[0]),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(whatsAppIcons[1]),
          // )
        ],
      )
          : index == 2
          ? Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton( onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPay(),)); }, icon: const Icon(Icons.arrow_back_ios,size: 20),),
          SizedBox(width: 80,),
          Text(textAlign: TextAlign.center,
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(updatesIcons[0]),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(updatesIcons[1]),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(updatesIcons[2]),
          // ),
          // const SizedBox(width: 2),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(updatesIcons[3]),
          // )
        ],
      )
          : Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back_ios,size: 15,),
          Expanded(
              child: Text(textAlign: TextAlign.center,
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                   ),
              )),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(communityIcons[0]),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(communityIcons[1]),
          // ),
          // const SizedBox(width: 2),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(communityIcons[2]),
          // )
        ],
      )
      //     : Row(
      //   children: [
      //     Expanded(
      //         child: Text(textAlign: TextAlign.center,
      //           title,
      //           style: const TextStyle(
      //               fontWeight: FontWeight.bold,
      //               fontSize: 30,
      //               color: Colors.black),
      //         )),
      //     // IconButton(
      //     //   onPressed: () {},
      //     //   icon: Icon(callsIcons[0]),
      //     // ),
      //     // IconButton(
      //     //   onPressed: () {},
      //     //   icon: Icon(callsIcons[1]),
      //     // ),
      //     // IconButton(
      //     //   onPressed: () {},
      //     //   icon: Icon(callsIcons[2]),
      //     // ),
      //     // const SizedBox(width: 2),
      //     // IconButton(
      //     //   onPressed: () {},
      //     //   icon: Icon(callsIcons[3]),
      //     // )
      //   ],
      // ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

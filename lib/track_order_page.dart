import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodpay/foodpay.dart';

import 'order_page.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: _appBar(context),
          ),
          SizedBox(
            height: 20,
          ),
          _mapImageModal,
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: _moreFoodButton,
          )
        ],
      ),
    ));
  }
}

Widget _appBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Order(),
                ));
          },
          icon: Icon(Icons.arrow_back_ios, size: 20),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 35),
            child: const Text(
              textAlign: TextAlign.center,
              "Track Order",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget get _mapImageModal => Container(
  height: 530,
  child: Stack(
    children: [
      const Image(image: AssetImage("assets/welcome_images/map.png")),
      Positioned(
        top: 280,
        left: 30,
        right: 30,
        child: Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 10),
          height: 220,
          width: 300,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Your Delivery",
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              const Text(
                "In Progress",
                style: TextStyle(color: Colors.grey),
                maxLines: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: const Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.orange,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("DaulatPur",style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),
                        Text("Mautka kua near chandal 11111",style: TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),maxLines: 1,),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: const Row(
                  children: [
                    Icon(Icons.timelapse_outlined,color: Colors.orange,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("20-25 min",style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),
                        Text("Your product will get approx 25 min",style: TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),maxLines: 1,),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: const Row(
                  children: [
                    Icon(Icons.timelapse_outlined,color: Colors.orange,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nevla",style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),
                        Text("Mobile-123456789",style: TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),maxLines: 1,),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.call_outlined,color: Colors.orange,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);

Widget get _moreFoodButton => SizedBox(
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPay(),));
        },
        child: const Text(
          "Go for more food",
          style: TextStyle(
              color: Colors.white, overflow: TextOverflow.ellipsis),
          maxLines: 1,
        ));
  }),
);
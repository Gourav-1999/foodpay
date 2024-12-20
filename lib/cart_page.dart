import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodpay/order_payment_confirm_page.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import 'custom_app_bar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}
List<CartModal> cartList = [];
int currentindex = 1;

class _CartState extends State<Cart> {
  cartdataList() {
    cartList.clear();

    cartList.add(CartModal(
        images: "assets/images/rolls.png",
        name: "Rolls",
        icon: Icons.delete_outline,
        distance: "10-15 min",
        price: 200));

    cartList.add(CartModal(
        images: "assets/images/pizzzaa.png",
        name: "Pizza",
        icon: Icons.delete_outline,
        distance: "20-25 min",
        price: 300));

    cartList.add(CartModal(
        images: "assets/images/burger.png",
        name: "Burger",
        icon: Icons.delete_outline,
        distance: "10-15 min",
        price: 400));

    cartList.add(CartModal(
        images: "assets/images/sandwich.png",
        name: "Sandwich",
        icon: Icons.delete_outline,
        distance: "25-30 min",
        price: 100));


  }

  @override
  void initState() {
    // TODO: implement initState
    cartdataList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            CustomAppBar(
              index: currentindex,
              title: "Cart",
            ),
            _addToCartWidget,

            const Row(
              children: [
                Text("Total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1,),
                Spacer(),
                Text("1360 Rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1,),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _checkBoxButton,
            )
          ],
        ),
      ),
    ));
  }
}

Widget get _addToCartWidget => SizedBox(
      height: 450,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: cartList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              // clipBehavior: Clip.antiAlias,
              surfaceTintColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: Colors.grey, // Set the border color here
                  width: 0.7, // Set the border width here
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(cartList[index].icon),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                margin:
                                    const EdgeInsets.only(left: 30, bottom: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(cartList[index].images),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, bottom: 10),
                                child: Text(
                                  "Price:${cartList[index].price}rs",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cartList[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis),
                                  maxLines: 1,
                                ),
                                Row(
                                  children: [
                                    // const Icon(Icons.star,color: Colors.orange,size: 15,),
                                    RatingBar.builder(
                                      itemSize: 15,
                                      initialRating: 1,
                                      // direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 1,
                                      //itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Icon(
                                      Icons.timelapse_outlined,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    Text(cartList[index].distance),
                                  ],
                                ),
                                CounterButton(context,index)
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            );
          }),
    );

Widget get _checkBoxButton => SizedBox(
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
              Navigator.pushNamed(context, '/second');
            },
            child: const Text(
              "Checkout",
              style: TextStyle(
                  color: Colors.white, overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ));
      }),
    );

Widget CounterButton(BuildContext context, index) {
  return CustomizableCounter(
    borderColor: Colors.white,
    borderWidth: 0,
    borderRadius: 100,
    buttonText: "Add Item",
    textColor: Colors.black,
    textSize: 15,
    count: 0,
    step: 1,
    minCount: 0,
    maxCount: 10,
    showButtonText: false,
    incrementIcon: Container(
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
      child: const Icon(
        Icons.add,

        color: Colors.white,
      ),
    ),
    decrementIcon: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(width: 0.7, color: Colors.orange)),
      child: const Icon(
        Icons.remove,

        color: Colors.black,
      ),
    ),
    onDecrement: (value) {
      var sub = cartList[index].price;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item Removed: $sub"),
          duration: const Duration(milliseconds: 250),
        ),
      );
    },
    onIncrement: (value) {
      int prices = cartList[index].price;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item Added: $prices"),
          duration: const Duration(milliseconds: 250),

        ),
      );
      print(prices);
    },
    onCountChange: (value) {
      var prices = cartList[index].price;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item Changed: $prices"),
          duration: const Duration(milliseconds: 250),
        ),
      );
    },
  );
}

Widget totalAmount(BuildContext context, index) {
  var prices = cartList[index].price;
  return Row(
    children: [
      const Text(
        "Total (items)",
        style: TextStyle(
            fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
      Spacer(),
      Text(
        "$prices Rs.",
        style: const TextStyle(
            fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
        maxLines: 1,
      )
    ],
  );
}

class CartModal {
  String images;
  String name;
  IconData icon;
  String distance;
  int price;

  CartModal(
      {required this.images,
      required this.name,
      required this.icon,
      required this.distance,
      required this.price});
}

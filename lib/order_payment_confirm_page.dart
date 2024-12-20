import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'cart_page.dart';
import 'order_page.dart';

class OrderPayment extends StatefulWidget {
  const OrderPayment({super.key});

  @override
  State<OrderPayment> createState() => _OrderPaymentState();
}

List<PaymentModal> list = [];
List<ProductPriceModal> price = [];
bool isSelected=false;
void setState(){
    isSelected=!isSelected;
}
class _OrderPaymentState extends State<OrderPayment> {
  initProductPrice() {
    price.clear();
    price.add(ProductPriceModal(name: "Curry", price: "200*2"));
    price.add(ProductPriceModal(name: "Shahi Panner", price: "400"));
    price.add(ProductPriceModal(name: "Malai Kofta", price: "200"));
    price.add(ProductPriceModal(name: "Fried dal", price: "150"));
    price.add(ProductPriceModal(name: "Rice", price: "100"));
    price.add(ProductPriceModal(name: "Butter Naan", price: "20*4"));
    price.add(ProductPriceModal(name: "Raita", price: "60"));
  }

  initPayment() {
    list.clear();
    list.add(PaymentModal(name: "Cash on \nDelivery", icon: Icons.money));
    list.add(PaymentModal(name: "Card", icon: Icons.credit_card_outlined));
    list.add(PaymentModal(
        name: "Mobile \nBanking", icon: Icons.mobile_friendly_outlined));
  }

  @override
  void initState() {
    // TODO: implement initState
    initPayment();
    initProductPrice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _appBar(context),
                  const SizedBox(
                    height: 10,
                  ),
                  _locationWidget,
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Choose Payment Method",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  _choosePaymentMethod,
                  const SizedBox(
                    height: 7,
                  ),
                  _applyCoupon,
                  const SizedBox(height: 5,),
                  const Row(
                    children: [
                      Text(
                        "Product",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                      Spacer(),
                      Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ],
                  ),
                  _billModal,
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                      Spacer(),
                      Text(
                        "1360 Rs",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: _confirmButton,
                  )
                ],
              ),
            )));
  }
}

Widget _appBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator
                .of(context)
                .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) {
              return new Cart();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios, size: 20),
        ),
        Expanded(
          child: const Text(
            textAlign: TextAlign.center,
            "Order and Payment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        )
      ],
    ),
  );
}

Widget get _locationWidget => Container(
      height: 110,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Your Location",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                ),
                Spacer(),
                Text(
                  "Change Address",
                  style: TextStyle(
                      color: Colors.orange, overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  "Outside earth,near moon/sun",
                  style: TextStyle(
                      color: Colors.grey, overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );

Widget get _choosePaymentMethod => Container(
      alignment: Alignment.center,
      height: 120,
      width: 370,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: isSelected?Colors.black:Colors.orange,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Icon(
                      list[index].icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  list[index].name,
                  style: const TextStyle(color: Colors.orange),
                  maxLines: 2,
                )
              ],
            );
          }),
    );

Widget get _applyCoupon => SizedBox(
  height: 30,
  child: TextFormField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 1),
          ),
          hintText: 'Have Coupon apply here',
          hintStyle: TextStyle(
              color: Colors.grey, overflow: TextOverflow.ellipsis),
          hintMaxLines: 1,
        ),
      ),
);

Widget get _billModal => SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: price.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price[index].name,
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price[index].price,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  )
                ],
              )
            ],
          );
        },
      ),
    );

Widget get _confirmButton => SizedBox(
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
                return new Order();
              }));
            },
            child: const Text(
              "Confirm Order",
              style: TextStyle(
                  color: Colors.white, overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ));
      }),
    );

class PaymentModal {
  String name;
  IconData icon;

  PaymentModal({
    required this.name,
    required this.icon,
  });
}

class ProductPriceModal {
  String name;
  String price;

  ProductPriceModal({
    required this.name,
    required this.price,
  });
}

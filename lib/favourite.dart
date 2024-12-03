import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodpay/custom_app_bar.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}
List<FavrestaurantModal> favRestList = [];
int currentindex=2;
class _FavouriteState extends State<Favourite> {

  favList(){
    favRestList.clear();
    favRestList.add(FavrestaurantModal(
        images: "assets/restaurants/burgerking.png",
        name: "Burger King",
        icon: Icons.delete_outline,
        distance: "1.2km away",
        timeIcon: Icons.timelapse_outlined,
    ));
    favRestList.add(FavrestaurantModal(
        images: "assets/restaurants/devados.png",
        name: "Devados",
        icon: Icons.delete_outline,
        distance: "3.0km away",
      timeIcon: Icons.timelapse_outlined,

    ));
    favRestList.add(FavrestaurantModal(
        images: "assets/restaurants/kfc.png",
        name: "KFC",
        icon: Icons.delete_outline,
        distance: "1.5km away",timeIcon: Icons.timelapse_outlined,
       ));
    favRestList.add(FavrestaurantModal(
        images: "assets/restaurants/pizzahut.png",
        name: "Pizza Hut",
        icon: Icons.delete_outline,
        distance: "0.5km away",timeIcon: Icons.timelapse_outlined,
        ));

    favRestList.add(FavrestaurantModal(
        images: "assets/images/rolls.png",
        name: "Rolls Walks",
        icon: Icons.delete_outline,
        distance: "10-15 min",timeIcon: Icons.timelapse_outlined,
        ));

    favRestList.add(FavrestaurantModal(
        images: "assets/images/pizzzaa.png",
        name: "Pizza Country",
        icon: Icons.delete_outline,
        distance: "20-25 min",timeIcon: Icons.timelapse_outlined,
      ));

    favRestList.add(FavrestaurantModal(
        images: "assets/images/burger.png",
        name: "Burger Chef",
        icon: Icons.delete_outline,
        distance: "3.5km away",timeIcon: Icons.timelapse_outlined,
       ));
    setState(() {});
  }
@override
  void initState() {
    // TODO: implement initState
  favList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            CustomAppBar(index: currentindex,title: "Favorite",),
            _favRestaurantList
          ],
        ),
      ),
    ));
  }
}
Widget get _favRestaurantList=>Expanded(
  child: ListView.builder(
      shrinkWrap: true,
      itemCount: favRestList.length,
      itemBuilder: (context,index){
        return Card(
          margin: const EdgeInsets.symmetric( vertical: 10),
          // clipBehavior: Clip.antiAlias,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: Colors.grey, // Set the border color here
              width: 0.7, // Set the border width here
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(favRestList[index].icon),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 60,
                    margin: const EdgeInsets.only(left: 30,bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(favRestList[index].images),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: index==4||index==5?Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(favRestList[index].name,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),

                        Row(children: [
                          Icon(favRestList[index].timeIcon,size: 15,),Text(favRestList[index].distance),
                        ],),
                        const Text("Price 400.Rs"),
                        const SizedBox(height: 5,),
                        RatingBar.builder(itemSize: 10,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ):Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(favRestList[index].name,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),
                        Text(favRestList[index].distance),
                        const SizedBox(height: 5,),
                        RatingBar.builder(itemSize: 10,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
  }),
);
class FavrestaurantModal {
  String images;
  String name;
  IconData icon;
  String distance;
  IconData timeIcon;
  FavrestaurantModal(
      {required this.images,
        required this.name,
        required this.icon,
        required this.distance, required this.timeIcon,});
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodpay/custom_auto_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<FoodDataModal> foodImg = [];
List<RestaurantModal> restList = [];
List<PopularFoodModal> popList = [];
class _HomePageState extends State<HomePage> {



  popularList(){
    popList.clear();
    popList.add(PopularFoodModal(
        images: "assets/images/wingd.png",
        name: "Wings",
        icon: Icons.favorite,
        distance: "0.5 km",likes: "0.2 Likes",pages: "A"));
    popList.add(PopularFoodModal(
        images: "assets/images/burger.png",
        name: "Burger",
        icon: Icons.favorite,
        distance: "1.2 km",likes: "5.2 Likes",pages: "A"));

    popList.add(PopularFoodModal(
        images: "assets/images/sandwich.png",
        name: "Sandwich",
        icon: Icons.favorite,
        distance: "1.5 km",likes: "1.2 Likes",pages: "A"));

    popList.add(PopularFoodModal(
        images: "assets/images/rolls.png",
        name: "Rolls",
        icon: Icons.favorite,
        distance: "0.5 km",likes: "3.2 Likes",pages: "A"));
    popList.add(PopularFoodModal(
        images: "assets/images/pizzzaa.png",
        name: "Pizza",
        icon: Icons.favorite,
        distance: "0.5 km",likes: "0.5 Likes",pages: "A"));

    popList.add(PopularFoodModal(
        images: "assets/images/fries.png",
        name: "Fries",
        icon: Icons.favorite_border,
        distance: "3.0 km",likes: "2.2 Likes",pages: "A"));

    setState(() {});
  }

  dataList() {
    restList.clear();
    restList.add(RestaurantModal(
        images: "assets/restaurants/burgerking.png",
        name: "Burger King",
        icon: Icons.favorite,
        distance: "1.2 km"));
    restList.add(RestaurantModal(
        images: "assets/restaurants/devados.png",
        name: "Devados",
        icon: Icons.favorite_border,
        distance: "3.0 km"));
    restList.add(RestaurantModal(
        images: "assets/restaurants/kfc.png",
        name: "KFC",
        icon: Icons.favorite,
        distance: "1.5 km"));
    restList.add(RestaurantModal(
        images: "assets/restaurants/pizzahut.png",
        name: "Pizza Hut",
        icon: Icons.favorite,
        distance: "0.5 km"));

    setState(() {});
  }

  initDataList() {
    foodImg.clear();

    foodImg
        .add(FoodDataModal(images: "assets/images/burger.png", name: "Burger"));
    foodImg
        .add(FoodDataModal(images: "assets/images/fries.png", name: "Fries"));
    foodImg.add(
        FoodDataModal(images: "assets/images/sandwich.png", name: "Sandwich"));
    foodImg
        .add(FoodDataModal(images: "assets/images/rolls.png", name: "Rolls"));
    foodImg
        .add(FoodDataModal(images: "assets/images/pizzzaa.png", name: "Pizza"));
    foodImg
        .add(FoodDataModal(images: "assets/images/wingd.png", name: "Wings"));
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    initDataList();
    dataList();
    popularList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appBarWidget,
            const SizedBox(
              height: 15,
            ),
            _searchBarWidget,
            const Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                "Special offers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
            ),
            const AutoScrollImage(
              itemCount: 10, // Customize itemCount
              itemWidth: 100.0, // Customize itemWidth
              autoScrollDuration:
                  Duration(seconds: 2), // Customize autoScrollDuration
              timerInterval: Duration(seconds: 2),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15,top: 5),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Food Category",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Text("View all",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            _foodCategoryWidget,
            const Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                "Nearby Restaurant",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
            ),
            _nearByRestaurantWidget,
            const Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                "Popular Food",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
            ),
            _popularFood
          ],
        ),
      ),
    ));
  }
}

Widget get _appBarWidget => const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(
            Icons.my_location_outlined,
            color: Colors.orange,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Chandigarh",
            style: TextStyle(
                color: Colors.orange, overflow: TextOverflow.ellipsis),
            maxLines: 1,
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.orange,
          ),
          Spacer(),
          Icon(
            Icons.notifications_none,
            color: Colors.orange,
          )
        ],
      ),
    );

Widget get _searchBarWidget => Row(
      children: [
        Container(
          //margin: EdgeInsets.only(left: 20),
          width: 310,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.orange),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5)),
          child: const TextField(
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.orange,
                ),
                border: InputBorder.none,
                hintText: 'Search food and restaurants',
                hintStyle: TextStyle(
                    color: Colors.grey, overflow: TextOverflow.ellipsis)),
            maxLines: 1,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(5)),
            child: const Icon(
              Icons.swap_horiz,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
      ],
    );

Widget get _foodCategoryWidget => SizedBox(
  height: 70,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: foodImg.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print("hiii");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.orange,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(foodImg[index].images),
                                fit: BoxFit.contain),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                            width: 70,
                            height: 20,
                            color: Colors.orange,
                            child: Text(
                              foodImg[index].name,
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );

Widget get _nearByRestaurantWidget =>
    SizedBox(
         height: 130,
        child: ListView.builder(
        shrinkWrap: true,
        itemCount: restList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: 100,
          width: 120,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(6),
            shape: BoxShape.rectangle,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    restList[index].icon,
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage(restList[index].images),
                      fit: BoxFit.contain),
                ),
              ),
              Text(restList[index].name,style: const TextStyle(overflow: TextOverflow.ellipsis,fontWeight: FontWeight.bold),maxLines: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Align(alignment:Alignment.bottomLeft,child: Text(restList[index].distance,style: const TextStyle(overflow: TextOverflow.ellipsis),maxLines: 1,)),
                const SizedBox(width: 2,),
                    RatingBar.builder(itemSize: 10,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                ],
                )
              )
            ],
          ),
        ),
      );
    }));

Widget get _popularFood=> SizedBox(
  height: 130,
  child: ListView.builder(
      shrinkWrap: true,
      itemCount: popList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){

        return GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => UserDetailScreen(pages: popList[index])));

          },
          child: Container(
            height: 100,
            width: 120,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(left: 2,top: 10,right: 8,bottom: 8),
                      child: RatingBar.builder(itemSize: 10,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,left: 8,right: 8,bottom: 8),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          popList[index].icon,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage(popList[index].images),
                        fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(popList[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(popList[index].likes),
                    SizedBox(width: 6,),
                    Text(popList[index].distance)
                  ],
                )
              ],
            ),
          )
        );
  })
);
class FoodDataModal {
  String images;
  String name;

  FoodDataModal({required this.images, required this.name});
}

class RestaurantModal {
  String images;
  String name;
  IconData icon;
  String distance;

  RestaurantModal(
      {required this.images,
      required this.name,
      required this.icon,
      required this.distance});
}
class PopularFoodModal {
  String images;
  String name;
  IconData icon;
  String distance;
  String likes;
  String pages;
  PopularFoodModal(
      {required this.images,
        required this.name,
        required this.icon,
        required this.distance,required this.likes,required this.pages});
}

class UserDetailScreen extends StatelessWidget {

  const UserDetailScreen({super.key, required this.pages});

  final PopularFoodModal pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages.name), // title of UserDetail screen
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("${pages.name} ${pages.pages}"),
      ),
    );
  }
}

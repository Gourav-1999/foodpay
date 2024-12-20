import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodpay/cart_page.dart';
import 'package:foodpay/custom_auto_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
List<Widget> menuListRestaurants = [
  burgerKingModal,
  kfcModal,
  foodPlazzaModal,
  pizzaHutModal
];
int Index=0;
List<FoodDataModal> foodImg = [];
List<RestaurantModal> restList = [];
List<PopularFoodModal> popList = [];
List<menuDataModal> burgerkingData = [];
List<menuDataModal> kfcData = [];
List<menuDataModal> pizzaHutData = [];
List<menuDataModal> foodPlazaData = [];
class _HomePageState extends State<HomePage> {
  popularList() {
    popList.clear();
    popList.add(PopularFoodModal(
        images: "assets/images/wingd.png",
        name: "Wings",
        icon: Icons.favorite,
        distance: "0.5 km",
        likes: "0.2 Likes",
        rating: 4,
        price: "Price:250/Rs",
        time: "20-25 min",
        description:
            "Chicken wings are typically divided into two sections: the drumette and the flat or wingette. They are prepared by deep-frying, baking, or grilling, with deep-frying being the most common method. One of the defining characteristics of chicken wings is the wide range of sauces and flavors in which they can be coated."));
    popList.add(PopularFoodModal(
        images: "assets/images/burger.png",
        name: "Burger",
        icon: Icons.favorite,
        distance: "1.2 km",
        likes: "5.2 Likes",
        rating: 3,
        price: "Price:120/Rs",
        time: "10-15 min",
        description:
            "A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world."));

    popList.add(PopularFoodModal(
        images: "assets/images/sandwich.png",
        name: "Sandwich",
        icon: Icons.favorite,
        distance: "1.5 km",
        likes: "1.2 Likes",
        rating: 4,
        price: "Price:150/Rs",
        time: "25-30 min",
        description:
            "A sandwich is a dish typically consisting of meat, cheese or vegetables used as a filling between slices of bread, or placed atop a slice of bread; or, more generally, any dish in which bread serves as a container or wrapper for another food type, and allows it to be a finger food."));

    popList.add(PopularFoodModal(
        images: "assets/images/rolls.png",
        name: "Rolls",
        icon: Icons.favorite,
        distance: "0.5 km",
        likes: "3.2 Likes",
        rating: 3.5,
        price: "Price:240/Rs",
        time: "10-20 min",
        description:
            "A roti is a wrap style sandwich filled with either curried or sometimes stewed meats or vegetables wrapped inside a dhalpuri, paratha, or dosti roti."));
    popList.add(PopularFoodModal(
        images: "assets/images/pizzzaa.png",
        name: "Pizza",
        icon: Icons.favorite,
        distance: "0.5 km",
        likes: "0.5 Likes",
        rating: 5,
        price: "Price:220/Rs",
        time: "20-25 min",
        description:
            "Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot ...27"));

    popList.add(PopularFoodModal(
        images: "assets/images/fries.png",
        name: "Fries",
        icon: Icons.favorite_border,
        distance: "3.0 km",
        likes: "2.2 Likes",
        rating: 4.3,
        price: "Price:350/Rs",
        time: "25-30 min",
        description:
            "French fries, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips. Fries are often salted and served with other items, including ketchup, mayonnaise, or vinegar.1"));

    setState(() {});
  }

  burgerKingList(){
    burgerkingData.clear();
    burgerkingData.add(menuDataModal(menu: "assets/burgerking/pngwing.com (1).png", menuName: "Veg Patty", icon: Icons.favorite_border, distance: '20-25'));
    burgerkingData.add(menuDataModal(menu: "assets/burgerking/pngwing.com (2).png", menuName: "Chicken Grilled",icon: Icons.favorite, distance: '10-15'));
    burgerkingData.add(menuDataModal(menu: "assets/burgerking/pngwing.com (3).png", menuName: "Triple Grilled",icon: Icons.favorite_border, distance: '20-25'));
    burgerkingData.add(menuDataModal(menu: "assets/burgerking/pngwing.com (4).png", menuName: "Special Meal",icon: Icons.favorite, distance: '10-25'));
  setState(() {

  });
  }
  kfcList(){
    kfcData.clear();
    kfcData.add(menuDataModal(menu: "assets/foodplaza/dossa.png", menuName: "SouthInd Dossa",icon: Icons.favorite, distance: '10-15'));
    kfcData.add(menuDataModal(menu: "assets/foodplaza/butter chicken.png", menuName: "Butter Chicken",icon: Icons.favorite_border, distance: '20-25'));
    kfcData.add(menuDataModal(menu: "assets/foodplaza/biryani.png", menuName: "Chicken Biryani",icon: Icons.favorite_border, distance: '20-25'));
    kfcData.add(menuDataModal(menu: "assets/foodplaza/dal makhni.png", menuName: "Dal Makhni",icon: Icons.favorite, distance: '10-15'));
    kfcData.add(menuDataModal(menu: "assets/foodplaza/pizza.png", menuName: "Special Pizza",icon: Icons.favorite_border, distance: '20-25'));
    kfcData.add(menuDataModal(menu: "assets/foodplaza/veg thali.png", menuName:  "Veg Thali",icon: Icons.favorite, distance: '10-15'));
    setState(() {

    });
  }

  pizzaHutList() {
    pizzaHutData.clear();
    pizzaHutData.add(menuDataModal(menu: "assets/kfc/burgermeal.png", menuName: "Special Meal",icon: Icons.favorite, distance: '10-15'));
    pizzaHutData.add(menuDataModal(menu: "assets/kfc/chicken pops.png", menuName: "Chicken Pops",icon: Icons.favorite, distance: '20-25'));
    pizzaHutData.add(menuDataModal(menu: "assets/kfc/chickenburger.png", menuName: "Chicken Burger",icon: Icons.favorite_border, distance: '10-15'));
    pizzaHutData.add(menuDataModal(menu: "assets/kfc/chickenlegsmeal.png", menuName: "Chicken legs",icon: Icons.favorite, distance: '20-25'));
    pizzaHutData.add(menuDataModal(menu: "assets/kfc/chickennugts.png", menuName: "Chicken Nugots",icon: Icons.favorite_border, distance: '10-15'));
    setState(() {

    });
  }
    foodPlaza() {
      foodPlazaData.clear();
      foodPlazaData.add(menuDataModal(menu: "assets/pizzahut/nonvegloaded.png", menuName:  "NonVeg Loaded",icon: Icons.favorite, distance: '10-15'));
      foodPlazaData.add(menuDataModal(menu: "assets/pizzahut/sausage.png", menuName: "Sausage Pizza",icon: Icons.favorite_border, distance: '20-25'));
      foodPlazaData.add(menuDataModal(menu: "assets/pizzahut/specialveg.png", menuName: "Special Veg",icon: Icons.favorite, distance: '10-15'));
      foodPlazaData.add(menuDataModal(menu: "assets/pizzahut/vegloaded.png", menuName: "Veg Loaded",icon: Icons.favorite, distance: '20-25'));
      foodPlazaData.add(menuDataModal(menu: "assets/pizzahut/vegnonveg.png", menuName: "Special Pizza",icon: Icons.favorite_border, distance: '10-15'));
      setState(() {

      });
  }

  dataList() {
    restList.clear();
    restList.add(RestaurantModal(
        images: "assets/restaurants/burgerking.png",
        name: "Burger King",
        icon: Icons.favorite,
        distance: "1.2 km",
        restaurantImage: "assets/restaurants/BurgerKingrest.png",
        description:
            "Founded in 1954, BURGER KING® is the second largest fast food hamburger chain in the world. The original HOME OF THE WHOPPER®, our commitment to premium ingredients, signature recipes, and family-friendly dining experiences is what has defined our brand for more than 50 successful years."));
    restList.add(RestaurantModal(
        images: "assets/restaurants/devados.png",
        name: "Food Plaza",
        icon: Icons.favorite_border,
        distance: "3.0 km",
        restaurantImage: "assets/restaurants/restaurantdavava.png",
        description:
            "A good description highlights the food you serve, the atmosphere, the location, and the dining experience. These are simple things to list, but they can be hard to describe—especially in a way that appeals to guests."));
    restList.add(RestaurantModal(
        images: "assets/restaurants/kfc.png",
        name: "KFC",
        icon: Icons.favorite,
        distance: "1.5 km",

        restaurantImage: "assets/restaurants/kfcrestaurant.png",
        description:
            "KFC is a global chicken restaurant brand with a rich, decades-long history of success and innovation. It all started with one cook, Colonel Harland Sanders, who created a finger lickin' good recipe more than 75 years ago — a list of 11 secret herbs and spices scratched out on the back of his kitchen door."));
    restList.add(RestaurantModal(
        images: "assets/restaurants/pizzahut.png",
        name: "Pizza Hut",
        icon: Icons.favorite,
        distance: "0.5 km",

        restaurantImage: "assets/restaurants/pizzahutrest.png",
        description:
            "We have more than 16,000 restaurants and 350,000 team members in more than 100 countries. Whether it’s the original Stuffed Crust or putting a pizza in outer space, we never stop driving ourselves to deliver hot pizzas, fast every time – anywhere you want to enjoy it."));

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
    burgerKingList();
    kfcList();
    foodPlaza();
    pizzaHutList();
    super.initState();
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
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
                padding: EdgeInsets.only(bottom: 15, top: 5),
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
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              _foodCategoryWidget,
              Padding(
                padding: EdgeInsets.only(bottom: 15, top: 15),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Nearby Restaurant",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NearByRestaurantScreen(
                                    pages: restList[index]),
                              ));
                        },
                        child: const Text("View all",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              _nearByRestaurantWidget,
              Padding(
                padding: EdgeInsets.only(bottom: 15, top: 15),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Popular Food",
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
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              _popularFood
            ],
          ),
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
        Expanded(
          child: Container(
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

Widget get _nearByRestaurantWidget => SizedBox(
    height: 130,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: restList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RestaurantDetailScreen(pages: restList[index]),
                  ));
            },
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
                  Text(
                    restList[index].name,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                restList[index].distance,
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 1,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          RatingBar.builder(
                            itemSize: 10,
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
                      ))
                ],
              ),
            ),
          );
        }));

Widget get _popularFood => SizedBox(
    height: 130,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: popList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PopularFoodScreen(pages: popList[index])));
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 2, top: 10, right: 8, bottom: 8),
                          child: RatingBar.builder(
                            itemSize: 10,
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
                          padding: const EdgeInsets.only(
                              top: 4, left: 8, right: 8, bottom: 8),
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
                      child: Text(
                        popList[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(popList[index].likes),
                        SizedBox(
                          width: 6,
                        ),
                        Text(popList[index].distance)
                      ],
                    )
                  ],
                ),
              ));
        }));

class FoodDataModal {
  String images;
  String name;

  FoodDataModal({required this.images, required this.name});
}

class menuDataModal {
  String menu;
  String menuName;
  IconData icon;
  String distance;
  menuDataModal({required this.menu, required this.menuName,required this.icon,required this.distance});
}

class RestaurantModal {
  String images;
  String name;
  String restaurantImage;
  IconData icon;
  String distance;
  String description;

  RestaurantModal(
      {required this.images,
      required this.name,
      required this.icon,
      required this.distance,
      required this.restaurantImage,
      required this.description,
});
}

class NearByRestaurantScreen extends StatelessWidget {
  final RestaurantModal pages;

  const NearByRestaurantScreen({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Text(
        "Nearby Restaurant",
        style: TextStyle(fontWeight: FontWeight.bold),
        maxLines: 1,
      )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 50),
              child: const Row(
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
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _searchBarWidget,
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: restList.length,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              restList[index].icon,
                              color: Colors.orange,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 60,
                                margin:
                                    const EdgeInsets.only(left: 30, bottom: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(restList[index].images),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        restList[index].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 1,
                                      ),
                                      Text("${restList[index].distance},away"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      RatingBar.builder(
                                        itemSize: 10,
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 1.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}

class RestaurantDetailScreen extends StatelessWidget {
  final RestaurantModal pages;

   RestaurantDetailScreen({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Text(
        "Restaurant",
        style: TextStyle(fontWeight: FontWeight.bold),
        maxLines: 1,
      )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage("${pages.restaurantImage}"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "${pages.name}",
                  style: const TextStyle(
                      fontSize: 20,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                )),
                Container(
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.green,
                        ),
                        Text(
                          "Open",
                          style: TextStyle(fontSize: 15, color: Colors.orange),
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(child: Text("${pages.distance},away")),
                RatingBar.builder(
                  itemSize: 15,
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
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Text(
              "${pages.description}",
              style: TextStyle(overflow: TextOverflow.ellipsis),
              maxLines: 4,
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child:Index==0?burgerKingModal:Index==1?kfcModal:Index==2?foodPlazzaModal:Index==3?pizzaHutModal:null
            ),
          ],
        ),
      ),
    ));
  }
}

class PopularFoodModal {
  String images;
  String name;
  IconData icon;
  String distance;
  String likes;
  double rating;
  String price;
  String time;
  String description;

  PopularFoodModal(
      {required this.images,
      required this.name,
      required this.icon,
      required this.distance,
      required this.likes,
      required this.rating,
      required this.price,
      required this.time,
      required this.description});
}

class PopularFoodScreen extends StatelessWidget {
  const PopularFoodScreen({super.key, required this.pages});

  final PopularFoodModal pages;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(pages.name), // title of UserDetail screen
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(6),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          pages.icon,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      margin: EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage("${pages.images}"),
                            fit: BoxFit.contain),
                      ),
                    ),
                    Text(
                      "${pages.name}",
                      style: const TextStyle(
                          fontSize: 20,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          itemSize: 10,
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text("${pages.rating}"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(pages.time)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "${pages.price}",
                            style: TextStyle(fontSize: 15),
                            maxLines: 1,
                          ),
                        )),
                        CounterButton(context)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Description",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
              Expanded(
                  child: Text(
                "${pages.description}",
                style: TextStyle(overflow: TextOverflow.ellipsis),
                maxLines: 4,
              )),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: _checkBoxButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget CounterButton(BuildContext context) {
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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item Removed: $value"),
          duration: const Duration(milliseconds: 250),
        ),
      );
    },
    onIncrement: (value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item Added: $value"),
          duration: const Duration(milliseconds: 250),
        ),
      );
    },
    onCountChange: (value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item Changed: $value"),
          duration: const Duration(milliseconds: 250),
        ),
      );
    },
  );
}

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ));
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white, overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                ),
              ],
            ));
      }),
    );

class Burger {
  String images;
  String name;
  IconData icon;
  String distance;

  Burger(
      {required this.distance,
      required this.icon,
      required this.images,
      required this.name});
}

Widget get burgerKingModal => SizedBox(
    height: 130,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: burgerkingData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              width: 150,
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
                        burgerkingData[index].icon,
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
                          image: AssetImage(burgerkingData[index].menu),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    burgerkingData[index].menuName,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.timelapse_outlined,size: 15,),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "${burgerkingData[index].distance}min",
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 1,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          RatingBar.builder(
                            itemSize: 10,
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
                      ))
                ],
              ),
            ),
          );
        }));
Widget get kfcModal => SizedBox(
    height: 130,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: kfcData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              width: 150,
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
                        kfcData[index].icon,
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
                          image: AssetImage(kfcData[index].menu),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    kfcData[index].menuName,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.timelapse_outlined,size: 15,),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "${kfcData[index].distance}min",
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 1,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          RatingBar.builder(
                            itemSize: 10,
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
                      ))
                ],
              ),
            ),
          );
        }));
Widget get foodPlazzaModal => SizedBox(
    height: 130,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: foodPlazaData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              width: 150,
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
                        foodPlazaData[index].icon,
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
                          image: AssetImage(foodPlazaData[index].menu),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    foodPlazaData[index].menuName,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.timelapse_outlined,size: 15,),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "${foodPlazaData[index].distance}min",
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 1,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          RatingBar.builder(
                            itemSize: 10,
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
                      ))
                ],
              ),
            ),
          );
        }));
Widget get pizzaHutModal => SizedBox(
    height: 130,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: pizzaHutData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              width: 150,
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
                        pizzaHutData[index].icon,
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
                          image: AssetImage(pizzaHutData[index].menu),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    pizzaHutData[index].menuName,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.timelapse_outlined,size: 15,),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "${pizzaHutData[index].distance}min",
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 1,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          RatingBar.builder(
                            itemSize: 10,
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
                      ))
                ],
              ),
            ),
          );
        }));

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class FoodPay extends StatefulWidget{
  _FoodPay createState()=>_FoodPay();
}

class _FoodPay extends State<FoodPay>{
  int _currentIndex=0;
  final _screens =[

    HomePage(),
    CartPage(),
    FavPage(),
    ProfilePage()
  ];

  Widget build(BuildContext context){
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex:_currentIndex,
          onTap:(index){
            setState(() {
              _currentIndex=index;
            });
          }
      ),
    );
  }
}
class CustomBottomNavigationBar extends StatelessWidget{
  int currentIndex;
  late final Function(int)
  onTap;

  CustomBottomNavigationBar(
      {super.key, required this.currentIndex,required this.onTap});

  Widget build(BuildContext context){
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 10),

          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomNavigationBarItem(
            icon:Icons.home,
            label:'Home',
            isSelected:currentIndex==0,
            onTap:(){
              onTap(0);
            },
          ),
          CustomNavigationBarItem(
            icon:Icons.shopping_cart_outlined,
            label:'Cart',
            isSelected:currentIndex==1,
            onTap:(){
              onTap(1);
            },
          ),
          CustomNavigationBarItem(
            icon:Icons.favorite_border_outlined,
            label:'Favourites',
            isSelected:currentIndex==2,
            onTap:(){
              onTap(2);
            },
          ),
          CustomNavigationBarItem(
            icon:Icons.person_outline_outlined,
            label:'Profile',
            isSelected:currentIndex==3,
            onTap:(){
              onTap(3);
            },
          )
        ],
      ),

    );
  }

}
class CustomNavigationBarItem extends StatelessWidget{
  late final IconData icon;
  late final String label;
  late final bool isSelected;
  late final Function onTap;

  CustomNavigationBarItem({required this.icon,required this.label,required this.isSelected,required this.onTap});

  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 20,color:isSelected?Colors.orange:Colors.grey),
          Text(label,style: TextStyle(color: isSelected?Colors.orange:Colors.grey),)
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hi!"),
    );
  }
}
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hi!"),
    );
  }
}
class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hi!"),
    );
  }
}




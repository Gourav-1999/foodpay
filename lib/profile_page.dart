import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodpay/about_us_page.dart';
import 'package:foodpay/custom_app_bar.dart';
import 'package:foodpay/edit_profile.dart';
import 'package:foodpay/favourite.dart';
import 'package:foodpay/help_page.dart';
import 'package:foodpay/login_page.dart';
import 'package:foodpay/order_history.dart';
import 'package:foodpay/payment_details.dart';
import 'package:foodpay/setting_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
List<Widget> pagesList = [
  Favourite(),
  EditProfile(),
  OrderHistory(),
  PaymentDetails(),
  Settings(),
  HelpPage(),
  AboutUsPage()
];

List<ProfileModal> listdata = [];
int currentIndex = 3;

class _ProfileState extends State<Profile> {
  initprofiledata() {
    listdata.clear();
    listdata.add(ProfileModal(
        name: "Favourite",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.favorite_outline));
    listdata.add(ProfileModal(
        name: "Edit Profile",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.edit_note_outlined));
    listdata.add(ProfileModal(
        name: "Order History",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.history_outlined));
    listdata.add(ProfileModal(
        name: "Payment Details",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.payment_outlined));
    listdata.add(ProfileModal(
        name: "Settings",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.settings));
    listdata.add(ProfileModal(
        name: "Help",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.help_outline));
    listdata.add(ProfileModal(
        name: "About Us",
        menuIcon: Icons.arrow_forward_ios,
        icon: Icons.account_circle_outlined));
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    initprofiledata();
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
            CustomAppBar(index: currentIndex, title: "Profile"),
            _profilePhoto,
            SizedBox(
              height: 15,
            ),
            _profileDataModal(context),
          ],
        ),
      ),
    ));
  }
}

Widget get _profilePhoto => Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/welcome_images/backgrountPhoto.png"),
                fit: BoxFit.contain),
          ),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/welcome_images/profile.png"),
                    fit: BoxFit.cover),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Colors.black,
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
         Text("Gainda Swami",style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,),
         Text("gainda1212@blackmail.com",style: TextStyle(overflow: TextOverflow.ellipsis,color: Colors.grey),maxLines: 1,),
      ],
    );

Widget _profileDataModal(BuildContext context) => Column(
      children: [
        ListView.builder(
            itemCount: listdata.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => pagesList[index],
                      ),
                          (Route<dynamic> route) => false,
                    );
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => pagesList[index],));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(listdata[index].icon),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        listdata[index].name,
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      )),
                      Icon(
                        listdata[index].menuIcon,
                        size: 15,
                      )
                    ],
                  ),
                ),
              );
            }),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
            },
            child: const Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        )
      ],
    );

class ProfileModal {
  String name;
  IconData menuIcon;
  IconData icon;

  ProfileModal(
      {required this.name, required this.menuIcon, required this.icon});
}

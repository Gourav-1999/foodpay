library auto_scroll_image;

import 'dart:async';
import 'package:flutter/material.dart';

/// A Flutter package for auto-scrolling images.
///
/// This package provides a widget for displaying a horizontal list of images
/// that automatically scrolls.
///
/// Users can customize the number of items, item width, and the duration of auto-scrolling.
///
/// Example:
/// ```dart
/// AutoScrollImage(
///   itemCount: 5,
///   itemWidth: 150.0,
///   autoScrollDuration: Duration(seconds: 1),
///   timerInterval: Duration(seconds: 3),
/// )
/// ```
List<UserDataModal> dataList = [];
class AutoScrollImage extends StatefulWidget {
  final int itemCount;
  final double itemWidth;
  final Duration autoScrollDuration;
  final Duration timerInterval;

  const AutoScrollImage({
    Key? key,
    this.itemCount = 10,
    this.itemWidth = 80.0,
    this.autoScrollDuration = const Duration(seconds: 1),
    this.timerInterval = const Duration(seconds: 1),
  }) : super(key: key);

  @override
  _AutoScrollImageState createState() => _AutoScrollImageState();
}

class _AutoScrollImageState extends State<AutoScrollImage> {

  initDataList() {
    dataList.clear();

    dataList.add(
        UserDataModal(images: "assets/welcome_images/food.png",offer: "20% off",name: "Ice cream"));
    dataList.add(
        UserDataModal(images: "assets/welcome_images/foods.png",offer: "40% off",name: "Burger"));
    dataList.add(
        UserDataModal(images: "assets/welcome_images/foodss.png",offer: "20% off",name: "Pancake"));
    dataList.add(
        UserDataModal(images: "assets/welcome_images/foodsss.png",offer: "60% off", name: "Sprouts"));
    dataList.add(
        UserDataModal(images: "assets/welcome_images/foodssss.png",offer: "30% off",name: "Pizza"));
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState

    startAutoScroll();
    initDataList();
    super.initState();
  }

  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  bool scrollingRight = true;


  void startAutoScroll() {
    _timer = Timer.periodic(widget.timerInterval, (timer) {
      if (_scrollController.hasClients) {
        double targetPosition;
        if (scrollingRight) {
          targetPosition = _scrollController.position.pixels + widget.itemWidth;
        } else {
          targetPosition = _scrollController.position.pixels - widget.itemWidth;
        }

        if (targetPosition >= 0 &&
            targetPosition <= _scrollController.position.maxScrollExtent) {
          /// Scroll to the target position
          _scrollController.animateTo(
            targetPosition,
            duration: widget.autoScrollDuration,
            curve: Curves.easeInOut,
          );
        } else {
          /// Stop scrolling at the end
          _timer?.cancel();

          /// Delay for a moment to pause at the end
          Future.delayed(const Duration(milliseconds: 500), () {
            /// Change direction
            scrollingRight = !scrollingRight;

            /// Restart auto-scrolling
            startAutoScroll();
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 120.0,
        width: wi * 0.9,
        child: ListView.builder(
          controller: _scrollController,
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: dataList.length,
          itemBuilder: (context, index) {

            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 70,
                      width: widget.itemWidth,
                      margin: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2,style: BorderStyle.solid),
                        image: DecorationImage(
                            image:
                            AssetImage(dataList[index].images),
                            fit: BoxFit.cover),
                      ),
                    ),Positioned(child: Container(
                      height: 20,
                      width: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(dataList[index].offer,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ))
                  ],

                ),
                Text(dataList[index].name)
              ],
            );
          },
        ),
      ),
    );
  }
}
class UserDataModal {
  String images;
  String offer;
  String name;
  UserDataModal({required this.images,required this.offer,required this.name});
}


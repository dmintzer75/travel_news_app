// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:news_app/widgets/place_card.dart';
import 'package:unicons/unicons.dart';
import 'package:news_app/static/static_images.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'widgets/custom_bottom_navbar.dart';
import 'widgets/short_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(
            height: 56,
          ),
          Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kLightBlue,
                  image: DecorationImage(image: NetworkImage(kAvatar)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Monday, 31 October',
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kGrey,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              // boxShadow: [
              //   BoxShadow(color: kDarkBlue, offset: Offset(0,3),),
              // ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: TextEditingController(),
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article...',
                      hintStyle: kPoppinsRegular.copyWith(
                          color: kLightGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      border: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      errorBorder: kBorder,
                    ),
                  ),
                ),
                Container(
                  width: 47,
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kBlue,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      UniconsLine.search,
                      color: kWhite,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 20,
            width: SizeConfig.blockSizeHorizontal! * 90,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 38.0),
                  child: Text(
                    '#Health',
                    style: kPoppinsMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kGrey,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 315,
            width: 500,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return PlaceCard();
              },
            ),
          ),
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Short for you',
                style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5),
              ),
              Text(
                'View all',
                style: kPoppinsMedium.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
              ),
            ],
          ),
          SizedBox(height: 19),
          Container(
            height: 88,
            width: 500,
            child: ListView.builder(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ShortCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

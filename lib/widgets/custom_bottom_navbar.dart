// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/app_styles.dart';
import 'package:unicons/unicons.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Container(
      padding: const EdgeInsets.only(top: 8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kBorderRadius),
            topRight: Radius.circular(kBorderRadius)),
        color: kWhite,
      ),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(
                    Icons.home,
                    color: kBlue,
                    size: 30,
                  )
                : Icon(
                    Icons.home_outlined,
                    color: kGrey,
                    size: 30,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(
                    Icons.bookmark,
                    color: kBlue,
                    size: 30,
                  )
                : Icon(
                    Icons.bookmark_outline,
                    color: kGrey,
                    size: 30,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(
                    Icons.notifications,
                    color: kBlue,
                    size: 30,
                  )
                : Icon(
                    Icons.notifications_none_outlined,
                    color: kGrey,
                    size: 30,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Icon(
                    Icons.person,
                    color: kBlue,
                    size: 30,
                  )
                : Icon(
                    Icons.person_outline,
                    color: kGrey,
                    size: 30,
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}

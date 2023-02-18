// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:news_app/static/static_images.dart';
import 'package:unicons/unicons.dart';

class ShortCard extends StatelessWidget {
  const ShortCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      height: 88,
      width: 208,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: kLightGrey.withOpacity(0.2),
              offset: Offset(2, 4),
              blurRadius: 10)
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(kMountain),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Top Trending Island in 2023',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kPoppinsSemiBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      UniconsLine.eye,
                      color: kGrey,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '40,999',
                      style: kPoppinsMedium.copyWith(
                          color: kGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

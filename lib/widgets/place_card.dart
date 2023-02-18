import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:news_app/static/static_images.dart';
import 'package:unicons/unicons.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(12),
      width: 255,
      height: 315,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: kLightGrey.withOpacity(0.2),
            offset: const Offset(1, 2),
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(kBali),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: Text(
              'Bali - Unique, unmatched. Feel the thrill on the only surf simulator in Maldives 2022. Ther is no other place like it',
              style: kPoppinsBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 19,
                backgroundImage: NetworkImage(kProfile),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dario Mintzer',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Feb 18, 2023',
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kLightWhite,
                  boxShadow: const [
                    BoxShadow(
                        color: kLightGrey, offset: Offset(1, 2), blurRadius: 1)
                  ],
                ),
                child: const Icon(
                  UniconsLine.message,
                  color: kBlue,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

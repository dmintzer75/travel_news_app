import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kWhite = Colors.white;
const Color kLightWhite = Color(0xffeff5f4);
// const Color kLighterWhite = Color(0xffFcFcFc);
Color kLighterWhite = Colors.grey[100]!;

const Color kGrey = Color(0xff9397a0);
const Color kLightGrey = Color(0xffA7A7A7);

const Color kBlue = Color(0xff5474FD);
const Color kLightBlue = Color(0xff83b1ff);
const Color kLighterBlue = Color(0xffc1d4f9);
const Color kDarkBlue = Color(0xff19202d);

const double kBorderRadius = 18.0;

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);

final kPoppinsBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.bold,
);
final kPoppinsSemiBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w600,
);
final kPoppinsMedium = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w500,
);

final kPoppinsRegular = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.normal,
);

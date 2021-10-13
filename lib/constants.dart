import 'package:flutter/material.dart';

//LinearGradients
const LinearGradient kBlueLinear = LinearGradient(
  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
);
const LinearGradient kPurpleLinear = LinearGradient(
  colors: [Color(0xFFC58BF2), Color(0xFFEEA4CE)],
);

//Colors
const Color kColorBlueSky = Color(0xFF92A3FD);
const Color kColorGray1 = Color(0xFF7B6F72);
const Color kColorGray2 = Color(0xFFADA4A5);
const Color kColorGray3 = Color(0xFFDDDADA);
const Color kColorWhite = Color(0xFFFFFFFF);
const Color kColorBlack = Color(0xFF1D1617);
const Color kColorBorder = Color(0xFFF7F8F8);
const Color kColorGreen = Color(0xFF42D742);
const Color kColorYellow = Color(0xFFFFD600);
const Color kColorRed = Color(0xFFFF0000);

//Text gradient
final Shader kTextBlueLinear = const LinearGradient(
  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
).createShader(
  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);

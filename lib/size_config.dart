import 'dart:math';

import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double refSize;

  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    final diagonalInches =
        sqrt((screenWidth * screenWidth) + (screenHeight * screenHeight)) /
            MediaQuery.of(context).devicePixelRatio;

    final diagonalPixels =
        diagonalInches * MediaQuery.of(context).devicePixelRatio;

    refSize = sqrt((diagonalPixels * diagonalPixels) /
        (1 + pow(MediaQuery.of(context).textScaleFactor - 1, 2)));
  }
}


double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  
  return (inputHeight / 812.0) * screenHeight;
}


double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  
  return (inputWidth / 375.0) * screenWidth;
}

double calculateTextSize(double fontSize) {
  
  final screenWidth = SizeConfig.screenWidth;
  final screenHeight = SizeConfig.screenHeight;

  
  final screenDiagonal =
      sqrt((screenWidth * screenWidth) + (screenHeight * screenHeight));

  
  final scalingFactor = screenDiagonal / SizeConfig.refSize;

  
  final scaledFontSize = fontSize * scalingFactor;

  return scaledFontSize;
}

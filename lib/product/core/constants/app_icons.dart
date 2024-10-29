// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AppIcons {
  arrowLeft('arrow_right');

  final String value;
  const AppIcons(this.value);

  String get toSvg => "assets/icons/$value.svg";
  SvgPicture toSvgImg(
    Color? color,
    double width,
    double height,
  ) =>
      SvgPicture.asset(
        toSvg,
        color: color,
        width: width,
        height: height,
      );

  String get toPng => "assets/icons/$value.png";
  Image toPngImg(
    double width,
    double height,
  ) =>
      Image.asset(
        toPng,
        width: width,
        height: height,
      );
}




enum AppIcons2 {
  arrowLeft('arrow_left');

  final String value;

  const AppIcons2(this.value);

  // Path to the SVG asset
  String get toSvg => "assets/icons/$value.svg";

  // Returns an SvgPicture widget
  SvgPicture toSvgImg({
    Color? color,
    double? width,
    double? height,
  }) {
    return SvgPicture.asset(
      toSvg,
      color: color,
      width: width,
      height: height,
    );
  }

  // Path to the PNG asset
  String get toPng => "assets/icons/$value.png";

  // Returns an Image widget
  Image toPngImg({
    double? width,
    double? height,
  }) {
    return Image.asset(
      toPng,
      width: width,
      height: height,
    );
  }
}

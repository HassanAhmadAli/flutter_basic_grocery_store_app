import 'dart:ui';

import 'package:flutter_randomcolor/flutter_randomcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/feature/category/data/category_items.dart';
import 'package:ptc_test/src/feature/category/presentation/screen.dart';
import 'package:ptc_test/src/model/category_item.dart';

class RandomColorPicker {
  static Options options =
      Options(format: Format.rgba, luminosity: Luminosity.dark);

  static Color get randomColor {
    List<String> colorRgboValues = RandomColor.getColor(options)
        .replaceAll('rgba(', '')
        .replaceAll(')', '')
        .split(",");
    return Color.fromRGBO(
      int.parse(colorRgboValues[0]),
      int.parse(colorRgboValues[1]),
      int.parse(colorRgboValues[2]),
      double.parse(colorRgboValues[3]),
    );
  }
}

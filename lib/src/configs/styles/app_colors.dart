import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  AppColors._();

  static HexColor primary = HexColor("#2475FF");
  static HexColor secondary = HexColor("#E3F8FF");

  static HexColor black = HexColor("#000000");
  static HexColor white = HexColor("#ffffff");
  static HexColor peach = HexColor("#FCEFDA");
  static HexColor yellow = HexColor("#FFDB45");
  static HexColor purple = HexColor("#E3E4FD");
  static HexColor green = HexColor("#41BD6F");

  static LinearGradient backgroundGradiant = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primary.withOpacity(0.6), primary.withOpacity(0.3), secondary],
  );
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mawi/src/utils/colors.dart';

// Button Styles
var kButtonStyleMedium = ElevatedButton.styleFrom(
    fixedSize: const Size(175, 50),
    backgroundColor: MyColor.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
    elevation: 0);

var kButtonStyleMediumLight = ElevatedButton.styleFrom(
    fixedSize: const Size(175, 50),
    backgroundColor: MyColor.whiteColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7),
      side: const BorderSide(color: MyColor.primaryColor, width: 1),
    ),
    elevation: 0);

// Button Styles
var kButtonStyleLarge = ElevatedButton.styleFrom(
    fixedSize: const Size(175, 50),
    minimumSize: const Size(double.infinity, 50),
    backgroundColor: MyColor.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.symmetric(vertical: 15));

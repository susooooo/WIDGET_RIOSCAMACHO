import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.yellowAccent,
  Colors.orangeAccent,
  ];
  
  
  class AppTheme {
    final int selectedColor;

    AppTheme({
      this.selectedColor = 0,
      }):assert(selectedColor >= 0,'The color must be greater than or equal to 0'),
      assert (selectedColor < colorList.length, 'The color must be less than the length of the color list');

    ThemeData themeData() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: AppBarTheme(
          centerTitle: false,
        ),
      );

  }

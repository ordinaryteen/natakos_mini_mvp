import 'package:flutter/material.dart';

class DietModel {
  String name;
  String description;
  String iconPath;
  Color boxColor;
  bool viewIsSelected;


  DietModel({
    required this.name,
    required this.description,
    required this.iconPath,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiet() {
    List<DietModel> diet = [];

    diet.add(
        DietModel(
          name: 'Honey Pancakes',
          description: 'Easy | 30 mins | 180kcal',
          iconPath: 'assets/icons/honey-pancakes.svg',
          boxColor: Color(0xff9DCEFF),
          viewIsSelected: true,
        )
    );

    diet.add(
        DietModel(
          name: 'Canai Bread',
          description: 'Medium | 20 mins | 240kcal',
          iconPath: 'assets/icons/canai-bread.svg',
          boxColor: Color(0xffEEA4CE),
          viewIsSelected: false,
        )
    );

    return diet;
  }
}
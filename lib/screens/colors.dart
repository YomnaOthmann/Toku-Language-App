import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/constants/colors.dart';

import '../models/model_item.dart';

class ColorsPage extends StatelessWidget {


  List<Item> colors = const [
      Item(
      image: "assets/images/colors/color_black.png", 
      jpName: "Burakku", 
      enName: "Black", 
      soundFile: "sounds/colors/black.wav",),
      Item(
      image: "assets/images/colors/color_brown.png", 
      jpName: "Chairo", 
      enName: "Brown", 
      soundFile: "sounds/colors/brown.wav",),
      Item(
      image: "assets/images/colors/color_dusty_yellow.png", 
      jpName: "Hokori Ppoi Kiiro", 
      enName: "Dusty Yellow", 
      soundFile: "sounds/colors/dusty_yellow.wav",),
      Item(
      image: "assets/images/colors/color_gray.png", 
      jpName: "Gurē", 
      enName: "Gray", 
      soundFile: "sounds/colors/gray.wav",),
      Item(
      image: "assets/images/colors/color_green.png", 
      jpName: "Midori", 
      enName: "Green", 
      soundFile: "sounds/colors/green.wav",),
      Item(
      image: "assets/images/colors/color_red.png", 
      jpName: "aka", 
      enName: "Red", 
      soundFile: "sounds/colors/red.wav",),
      Item(
      image: "assets/images/colors/color_white.png", 
      jpName: "Shiroi", 
      enName: "White", 
      soundFile: "sounds/colors/white.wav",),
      Item(
      image: "assets/images/colors/yellow.png", 
      jpName: "Kiiro", 
      enName: "Yellow", 
      soundFile: "sounds/colors/yellow.wav",),
  ];

  ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text(
          "Colors",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context,index)=>ListItem(item: colors[index], color: AppColors.purple))
        );
    
  }
}
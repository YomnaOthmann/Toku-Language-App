import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/constants/colors.dart';

import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  final List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        enName: "One",
        jpName: "Ichi",
        soundFile: "sounds/numbers/number_one_sound.mp3"),
    Number(
      image: 'assets/images/numbers/number_two.png',
      enName: "Two",
      jpName: "Ni",
      soundFile: "sounds/numbers/number_two_sound.mp3",
    ),
    Number(
        image: 'assets/images/numbers/number_three.png',
        enName: "Three",
        jpName: "Mittsu",
        soundFile: "sounds/numbers/number_three_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_four.png',
        enName: "Four",
        jpName: "Shi",
        soundFile: "sounds/numbers/number_four_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_five.png',
        enName: "Five",
        jpName: "Go",
        soundFile: "sounds/numbers/number_five_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_six.png',
        enName: "Six",
        jpName: "Roku",
        soundFile: "sounds/numbers/number_six_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        enName: "Seven",
        jpName: "Sebun",
        soundFile: "sounds/numbers/number_seven_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        enName: "Eight",
        jpName: "Hachi",
        soundFile: "sounds/numbers/number_eight_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        enName: "Nine",
        jpName: "Kyū",
        soundFile: "sounds/numbers/number_nine_sound.mp3"),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        enName: "Ten",
        jpName: "Jū",
        soundFile: "sounds/numbers/number_ten_sound.mp3"),
  ];

  const NumbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text(
          "Numbers",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => Item(number: numbers[index]),
      ),
    );
  }
}

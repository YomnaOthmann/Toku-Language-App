import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../constants/colors.dart';
import '../models/model_item.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/family_members/family_father.png',
        enName: "Father",
        jpName: "Chichioya",
        soundFile: "sounds/family_members/father.wav"),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
        enName: "Daughter",
        jpName: "Musume",
        soundFile: "sounds/family_members/daughter.wav",
    ),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: "Grand Father",
        jpName: "Ojīsan",
        soundFile: "sounds/family_members/grand_father.wav"),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        enName: "Mother",
        jpName: "Hahaoya",
        soundFile: "sounds/family_members/mother.wav"),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: "Grand Mother",
        jpName: "Sobo",
        soundFile: "sounds/family_members/grand_mother.wav"),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: "Older Brother",
        jpName: "Nīsan",
        soundFile: "sounds/family_members/older_brother.wav"),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: "Older Sister",
        jpName: "Onēsan",
        soundFile: "sounds/family_members/older_sister.wav"),
    Item(
        image: 'assets/images/family_members/family_son.png',
        enName: "Son",
        jpName: "Musuko",
        soundFile: "sounds/family_members/son.wav"),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: "Younger Brother",
        jpName: "Otōto",
        soundFile: "sounds/family_members/younger_brother.wav"),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: "Younger Sister",
        jpName: "Imōto",
        soundFile: "sounds/family_members/younger_sister.wav"),
  ];

  const FamilyMembersPage({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text(
          "Family Members",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => ListItem(item: numbers[index], color: AppColors.green,),
      ),
    );
  }}
import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import '../components/phrses_list_item.dart';
import '../constants/colors.dart';
import '../models/model_item.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<Item> phrases = const [
    Item(
        jpName: "Namae wa nandesu ka?",
        enName: "What is your name?",
        soundFile: "sounds/phrases/what_is_your_name.wav"),
    Item(
        jpName: "Doko ni iku no?",
        enName: "Where are you going?",
        soundFile: "sounds/phrases/where_are_you_going.wav"),
    Item(
        jpName: "Kimasu ka?",
        enName: "Are you coming?",
        soundFile: "sounds/phrases/are_you_coming.wav"),
    Item(
        jpName: "Hai watashi wa ikimasu. ",
        enName: "Yes i'm coming",
        soundFile: "sounds/phrases/yes_im_coming.wav"),
    Item(
        jpName: "Kōdoku suru koto o wasurenaide kudasai",
        enName: "Don't Forget to subscribe",
        soundFile: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Item(
        jpName: "go kibun wa ikagadesu ka?",
        enName: "How are you feeling",
        soundFile: "sounds/phrases/how_are_you_feeling.wav"),
    Item(
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I love anime",
        soundFile: "sounds/phrases/i_love_anime.wav"),
    Item(
        jpName: "Watashi wa puroguramingu ga daisukidesu",
        enName: "I love programming",
        soundFile: "sounds/phrases/i_love_programming.wav"),
    Item(
        jpName: "Puroguramingu wa kantandesu",
        enName: "Programming is easy",
        soundFile: "sounds/phrases/programming_is_easy.wav"),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: const Text(
            "Phrases",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: ((context, index) =>
              PhrasesListItem(phrase: phrases[index], color: AppColors.blue)),
        ));
  }
}

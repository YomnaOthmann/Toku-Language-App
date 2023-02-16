import 'package:flutter/material.dart';
import 'package:toku/components/custom_category_container.dart';
import 'package:toku/constants/colors.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers.dart';
import 'package:toku/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text(
          "Toku",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryContainer(
            backgroundColor: AppColors.orange,
            title: "Numbers",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersPage(),
                ),
              );
            },
          ),
          CategoryContainer(
            backgroundColor: AppColors.green,
            title: "Family Members",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FamilyMembersPage(),),);
            },
          ),
          CategoryContainer(
            backgroundColor: AppColors.purple,
            title: "Colors",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsPage(),));
            },
          ),
          CategoryContainer(
            backgroundColor: AppColors.blue,
            title: "Phrases",
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> PhrasesPage()));
            },
          ),
        ],
      ),
    );
  }
}

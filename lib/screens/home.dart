import 'package:flutter/material.dart';
import 'package:toku/components/custom_container.dart';
import 'package:toku/constants/colors.dart';
import 'package:toku/screens/numbers.dart';

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
            onTap: () {},
          ),
          CategoryContainer(
            backgroundColor: AppColors.purple,
            title: "Colors",
            onTap: () {},
          ),
          CategoryContainer(
            backgroundColor: AppColors.blue,
            title: "Phrases",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toku/components/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6d8),
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text(
          "Toku",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: const [
          CategoryContainer(
            backgroundColor: Color(0xffEF9235),
            title: "Numbers",
          ),
          CategoryContainer(
            backgroundColor: Color(0xff538033),
            title: "Family Members",
          ),
          CategoryContainer(
            backgroundColor: Color(0xff7E3FA3),
            title: "Colors",
          ),
          CategoryContainer(
            backgroundColor: Color(0xff48A5CC),
            title: "Phrases",
          ),
        ],
      ),
    );
  }
}

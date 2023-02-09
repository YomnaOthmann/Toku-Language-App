import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final Color? backgroundColor;
  final String? title;

  const CategoryContainer({
    Key? key,
    this.backgroundColor,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      alignment: Alignment.centerLeft,
      color: backgroundColor,
      width: double.infinity,
      height: 60,
      child: Text(
        title!,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}

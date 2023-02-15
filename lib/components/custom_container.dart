import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final Color? backgroundColor;
  final String? title;
  final Function()? onTap;
  const CategoryContainer({
    Key? key,
    this.backgroundColor,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        alignment: Alignment.centerLeft,
        color: backgroundColor,
        width: double.infinity,
        height: 70,
        child: Text(
          title!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

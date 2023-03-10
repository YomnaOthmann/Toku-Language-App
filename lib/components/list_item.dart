import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/model_item.dart';


class ListItem extends StatelessWidget {
  final Item item;
  final Color color;
  const ListItem({
    super.key, required this.item, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(end: 16.0),
      color: color,
      height: 90,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            color: AppColors.background,
            child: Image.asset(
              item.image!,
              height: 90,
              width: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.enName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item.jpName,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                try {
                  AudioPlayer().play(AssetSource(item.soundFile));
                } catch (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text("An Error occurred while playing the sound"),
                    ),
                  );
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
    );
  }
}

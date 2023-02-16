
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/model_item.dart';

class PhrasesListItem extends StatelessWidget {
  final Item phrase;
  final Color color;
  const PhrasesListItem({
    super.key, required this.phrase, required this.color,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                      fontSize: 16,
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
                  AudioPlayer().play(AssetSource(phrase.soundFile));
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

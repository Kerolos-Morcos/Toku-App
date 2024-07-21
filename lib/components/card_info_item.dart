import 'package:flutter/material.dart';
import 'package:language_learning_app/models/items.dart';

// ignore: must_be_immutable
class CardInfo extends StatelessWidget {
  const CardInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ]),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: IconButton(
            onPressed: () {
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ]
    );
  }
}
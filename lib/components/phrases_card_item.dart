import 'package:flutter/material.dart';
import 'package:language_learning_app/components/card_info_item.dart';
import 'package:language_learning_app/models/items.dart';

class PhrasesCard extends StatelessWidget {
  const PhrasesCard({super.key, required this.itemPhrase, required this.color});
  final ItemModel itemPhrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Expanded(
          child: CardInfo(
            item: itemPhrase,
          ),
        )
      ]),
    );
  }
}
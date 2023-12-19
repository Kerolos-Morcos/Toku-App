import 'package:flutter/material.dart';
import 'package:language_learning_app/components/cardInfo_item.dart';
import 'package:language_learning_app/models/items.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Container(
          color: Colors.pink[50],
          child: Image.asset(
            item.image!,
          ),
        ),
        Expanded(
          child: CardInfo(item: item),
        ),
      ]),
    );
  }
}

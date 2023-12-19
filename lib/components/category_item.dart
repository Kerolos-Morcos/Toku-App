// UI Component
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.tap});
  String? text;
  Color? color;
  Function()? tap;
  // VoidCallback tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 18),
                height: 65,
                width: double.infinity,
                color: color,
                child: Text(
                  text!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
    );
  }
}
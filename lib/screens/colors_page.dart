import 'package:flutter/material.dart';
import 'package:language_learning_app/components/language_card_item.dart';
import 'package:language_learning_app/models/items.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
final List<ItemModel> colors = const [
  ItemModel(
    image: 'assets/images/colors/color_black.png',
    enName: 'Black',
    jpName: 'Burakku',
    sound: 'sounds/colors/black.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/color_brown.png',
    enName: 'Brown',
    jpName: 'Chairo',
    sound: 'sounds/colors/brown.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/color_dusty_yellow.png',
    enName: 'Dusty Yellow',
    jpName: 'Hijoshi',
    sound: 'sounds/colors/dusty yellow.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/color_gray.png',
    enName: 'Gray',
    jpName: 'Gure',
    sound: 'sounds/colors/gray.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/color_green.png',
    enName: 'Green',
    jpName: 'Midori',
    sound: 'sounds/colors/green.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/color_red.png',
    enName: 'Red',
    jpName: 'Aka',
    sound: 'sounds/colors/red.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/color_white.png',
    enName: 'White',
    jpName: 'Shiroi',
    sound: 'sounds/colors/white.wav'
  ),
  ItemModel(
    image: 'assets/images/colors/yellow.png',
    enName: 'Yellow',
    jpName: 'Kiiro',
    sound: 'sounds/colors/yellow.wav'
  ),
]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index)
        {
          return LanguageCard(
            item: colors[index],
            color: Colors.purple,
            );
        }
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:language_learning_app/components/language_card_item.dart';
import 'package:language_learning_app/models/items.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      enName: 'one',
      jpName: 'ichi',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      enName: 'two',
      jpName: 'Ni',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      enName: 'three',
      jpName: 'San',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      enName: 'four',
      jpName: 'Shi',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      enName: 'five',
      jpName: 'Go',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku',
        sound: 'sounds/numbers/number_six_sound.mp3',
        ),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun',
        sound: 'sounds/numbers/number_seven_sound.mp3',
        ),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'Hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3',
        ),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyu',
        sound: 'sounds/numbers/number_nine_sound.mp3',
        ),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Ju',
        sound: 'sounds/numbers/number_ten_sound.mp3',
        )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Numbers'),
      ),
      // Solution (A)
      // body: ListView(
      //    children: numbers
      //     .map((number) => LanguageCard(number: number))
      //     .toList(),
      // ));

      // Solution (B)
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return LanguageCard(
            item: numbers[index],
            color: const Color(0xffEF9235),
          );
        },
      ),
    );
  }
}

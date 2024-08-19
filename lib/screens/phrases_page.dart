import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrases_card_item.dart';
import 'package:language_learning_app/models/items.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrase = const [
    ItemModel(
        enName: 'are you coming?',
        jpName: 'jpName',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
      enName: "don't forget to subscribe",
      jpName: 'jpName',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      enName: 'how are you feeling?',
      jpName: 'jpName',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      enName: 'i love anime',
      jpName: 'jpName',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      enName: 'i love programming',
      jpName: 'jpName',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      enName: 'programming is easy',
      jpName: 'jpName',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      enName: 'what is your name?',
      jpName: 'jpName',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      enName: 'where are you going?',
      jpName: 'jpName',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      enName: "yes i'm coming",
      jpName: 'jpName',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff46322B),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: ListView.builder(
            itemCount: phrase.length,
            itemBuilder: (context, index) {
              return PhrasesCard(
                itemPhrase: phrase[index],
                color: Colors.lightBlue,
              );
            }));
  }
}

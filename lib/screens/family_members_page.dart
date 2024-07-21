import 'package:flutter/material.dart';
import 'package:language_learning_app/components/language_card_item.dart';
import 'package:language_learning_app/models/items.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers ({super.key});
  final List<ItemModel> families = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      enName: 'father',
      jpName: 'Chichioya',
      sound: 'sounds/family_members/father.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      enName: 'daughter',
      jpName: 'Musume',
      sound: 'sounds/family_members/daughter.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      enName: 'Grand Father',
      jpName: 'Ojisan',
      sound: 'sounds/family_members/grand father.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      enName: 'grand mother',
      jpName: 'Sobo',
      sound: 'sounds/family_members/grand mother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      enName: 'mother',
      jpName: 'Hahaoya',
      sound: 'sounds/family_members/mother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      enName: 'son',
      jpName: 'Musuko',
      sound: 'sounds/family_members/son.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      enName: 'older brother',
      jpName: 'Nisan',
      sound: 'sounds/family_members/older bother.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      enName: 'older sister',
      jpName: 'Ane',
      sound: 'sounds/family_members/older sister.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      enName: 'younger brother',
      jpName: 'Otachi',
      sound: 'sounds/family_members/younger brohter.wav'
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      enName: 'younger sister',
      jpName: 'Imo',
      sound: 'sounds/family_members/younger sister.wav'  
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: families.length,
          itemBuilder: (context, index)
          {
            return LanguageCard(
            item: families[index],
            color: const Color.fromARGB(255, 61, 142, 63),
          );
          }
          ),
      );
  }
}
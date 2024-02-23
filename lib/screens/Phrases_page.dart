import 'package:flutter/material.dart';
import 'package:toku_application/models/item.dart';

import '../components/phrase_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrasesList = const [
    ItemModel(
        jpName: 'Chichioya',
        enName: 'Are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        jpName: 'Ojisan',
        enName: 'Grand Father',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        jpName: 'Sobo',
        enName: 'Grand Mother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        jpName: 'Oniisan',
        enName: 'Older Brother',
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        jpName: 'Ane',
        enName: 'Older Sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        jpName: 'Otoutosan',
        enName: 'Younger Brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
        jpName: 'Imoutosan',
        enName: 'Younger Sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: Color(0xff50ADC7),
            item: phrasesList[index],
          );
        },
      ),
    );
  }

  /*List<Widget> getList(List<Number> numbersList) {
    List<Item> itemList = [];
    for (int i = 0; i < numbersList.length; i++) {
      itemList.add(Item(number: numbersList[i]));
    }
    return itemList;
  }*/
}

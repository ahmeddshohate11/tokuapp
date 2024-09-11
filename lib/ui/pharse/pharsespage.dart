import 'package:flutter/material.dart';
import 'package:tokuapp/components/phrase_item.dart';
import 'package:tokuapp/models/colors.dart';
import 'package:tokuapp/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'chich',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/are_you_coming.wav',
      jpName: 'Ni',
      enName: 'two',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/dont_forget_to_subscribe.wav',
      jpName: 'San',
      enName: 'three',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/how_are_you_feeling.wav',
      jpName: 'Shi',
      enName: 'four',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/i_love_anime.wav',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/i_love_programming.wav',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/programming_is_easy.wav',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/what_is_your_name.wav',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses//where_are_you_going.wav',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
      sound: 'assets/sounds/pharses/yes_im_coming.wav3',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Phrases'),
          backgroundColor: varColor.primarycolor,
        ),
        body: ListView.separated(
          itemCount: phrasesList.length,
          separatorBuilder: (context, index) => Divider(
            height: 5,
            color: Colors.brown,
          ),
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: const Color(0xff50ADC7),
              item: phrasesList[index],
            );
          },
        ),
      ),
    );
  }
}

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(
  //       ListItem(
  //         number: numbers[i],
  //       ),
  //     );
  //   }

  //   return itemsList;
  // }
// }

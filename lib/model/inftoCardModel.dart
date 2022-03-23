import 'package:flutter/widgets.dart';

class IntroCard {
  String image;
  Color color;
  String text;
  IntroCard({required this.color, required this.text, required this.image});
}

List<IntroCard> introCard = [
  IntroCard(color: Color.fromARGB(255,250, 107, 141), text: "Place your order on call instantly within seconds!", image: "assets/Images/card_1_intro.png")
 , IntroCard(color: Color.fromARGB(255,45, 198, 187), text: "Got a prescription? Upload and get your meds now!", image: "assets/Images/card_2_intro.png")
];

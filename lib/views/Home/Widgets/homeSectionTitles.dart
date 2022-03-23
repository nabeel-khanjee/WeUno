
import 'package:flutter/material.dart';
import 'package:we_uno_task/model/inftoCardModel.dart';
import 'package:we_uno_task/utils/colors.dart';

class HomeSectionsTitle extends StatelessWidget {
  const HomeSectionsTitle({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
            color: primaryColor, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

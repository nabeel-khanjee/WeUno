import 'package:flutter/material.dart';
import 'package:we_uno_task/model/inftoCardModel.dart';
import 'package:we_uno_task/utils/colors.dart';

class InteroCard extends StatelessWidget {
  const InteroCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, mainAxisExtent: 147),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.horizontal,
      itemCount: introCard.length,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Container(
            height: 147,
            width: 181,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: introCard[index].color),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Text(
                      introCard[index].text,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: canvasColor),
                      // height: 200,
                      // image: AssetImage(introCard[index].image),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Icon(Icons.arrow_forward_ios_outlined,
                        color: canvasColor),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image(
                      width: 65.83,
                      height: 74.05,
                      // height: 200,
                      image: AssetImage(introCard[index].image),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

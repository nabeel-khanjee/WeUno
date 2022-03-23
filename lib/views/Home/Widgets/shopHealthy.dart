
import 'package:flutter/material.dart';
import 'package:we_uno_task/model/shopHealtyModel..dart';

class ShopHealthy extends StatelessWidget {
  const ShopHealthy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.45,
      child: ListView.builder(
        //  physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: shopHealty.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Stack(
              children: [
                Image(
                  height: 128.45,
                  width: 222.75,
                  image: AssetImage(shopHealty[index].image),
                ),
                Positioned(
                    top: 30,
                    left: 15,
                    child: Container(
                      height: 38,
                      width: 71,
                      child: Text(
                        shopHealty[index].text,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

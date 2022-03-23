
import 'package:flutter/material.dart';
import 'package:we_uno_task/model/introBannerModel.dart';

class IntroBanner extends StatelessWidget {
  const IntroBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        //  physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: introBanner.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Image(
              height: 163,
              width: 298,
              image: AssetImage(introBanner[index].image),
            ),
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:we_uno_task/model/categoryModel.dart';
import 'package:we_uno_task/utils/colors.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width:176,
      child: ListView.builder(
        //  physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryModel.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 126,
                  width: 176,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    child: Image(
                      fit: BoxFit.cover,
                      // height: 128.45,
                      // width: 222.75,
                      image: AssetImage(categoryModel[index].image),
                    ),
                  ),
                ),
                Container(
                   height: 50,
                  width: 176,
                 
                  decoration: BoxDecoration(
                    color: canvasColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    )
                  ),
                  // height: 38,
                  // width: 71,
                  child: Center(
                    child: Text(
                      categoryModel[index].text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
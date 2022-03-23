
import 'package:flutter/material.dart';
import 'package:we_uno_task/model/babyCareModel.dart';
import 'package:we_uno_task/model/inftoCardModel.dart';
import 'package:we_uno_task/utils/colors.dart';

class BabyCareCard extends StatefulWidget {
  const BabyCareCard({
    Key? key,
  }) : super(key: key);

  @override
  State<BabyCareCard> createState() => _BabyCareCardState();
}

class _BabyCareCardState extends State<BabyCareCard> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 181, mainAxisExtent: 277),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        itemCount: babyCare.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Container(
              // height: 377,
              // width: 181,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: canvasColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 247, 237, 155),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Text(
                                    '${babyCare[index].leftChipText}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),

                                    // height: 200,

                                    // image: AssetImage(introCard[index].image),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 231, 108),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 194, 194, 60)),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(2.8),
                              child: Text(
                                "SC",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 143, 143, 68)),
                              ),
                            )),
                          ))
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '${babyCare[index].rightChipText}% OFF',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: canvasColor),
                            // height: 200,
                            // image: AssetImage(introCard[index].image),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: Icon(Icons.arrow_forward_ios_outlined,
                            color: canvasColor)),
                    Positioned(
                      top: 21,
                      right: 0,
                      left: 0,
                      child: Image(
                        // width: 65.83,
                        height: 124.05,
                        // height: 200,
                        image: AssetImage(introCard[index].image),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      right: 0,
                      left: 0,
                      child: Text(
                        babyCare[index].text,

                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        // height: 200,
                      ),
                    ),
                    Positioned(
                      top: 190,
                      right: 0,
                      left: 0,
                      child: Text(
                        'Rs.${babyCare[index].price}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                        // height: 200,
                      ),
                    ),
                   Positioned(
                              bottom: 0,
                              right: 0,
                              child:  Column(
                      children: [
                       Visibility(
                            visible: count == 0,
                            child:  Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: primaryColor.withOpacity(.3)),
                                child: MaterialButton(
                                  color: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)),
                                  minWidth: 50,
                                  height: 50,
                                  onPressed: () {
                                    if (count < 5) {
                                      setState(() {
                                        count++;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.plus_one
                                    ,
                                    color: canvasColor,
                                  ),
                                ),
                              ),
                            ),
                    Visibility(
                          
                          visible: count > 0,
                          child:  Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: primaryColor.withOpacity(.1)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                children: [
                                  MaterialButton(
                                    minWidth: 50,
                                    height: 50,
                                    color: Color.fromARGB(255, 188, 210, 250),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    onPressed: () {
                                      if (count > 0) {
                                        setState(() {
                                          count--;
                                        });
                                      }
                                    },
                                    child: Icon(
                                      Icons.exposure_minus_1,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      '$count',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  MaterialButton(
                                    color: primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    minWidth: 50,
                                    height: 50,
                                    onPressed: () {
                                      if (count < 5) {
                                        setState(() {
                                          count++;
                                        });
                                      }
                                    },
                                    child: Icon(
                                      Icons.plus_one,
                                      color: canvasColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        
                      ],
                    ),
                   )]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


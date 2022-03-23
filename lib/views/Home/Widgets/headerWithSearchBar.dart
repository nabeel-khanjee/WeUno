import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_uno_task/utils/colors.dart';

class HeaderWithSearchbar extends StatelessWidget {
  const HeaderWithSearchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.only(bottom: 30),
        height: 165,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                left: 8.0,
                top: 40,
                bottom: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/Images/logo.svg"),
                  Stack(children: [
                    Icon(
                      Icons.notifications,
                      color: canvasColor,
                      size: defaultPadding * 1.5,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          hintText: "Search products here...",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: primaryColor.withOpacity(0.5),
                          )),
                    ),
                  ),
                  // SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),

            // Center(child: Text("Home")),
          )
        ]));
  }
}

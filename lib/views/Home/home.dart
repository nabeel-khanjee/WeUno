import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_uno_task/model/babyCareModel.dart';
import 'package:we_uno_task/model/categoryModel.dart';
import 'package:we_uno_task/model/inftoCardModel.dart';
import 'package:we_uno_task/model/introBannerModel.dart';
import 'package:we_uno_task/model/shopHealtyModel..dart';
import 'package:we_uno_task/utils/colors.dart';
import 'package:we_uno_task/views/Home/Widgets/babycare.dart';
import 'package:we_uno_task/views/Home/Widgets/categories.dart';
import 'package:we_uno_task/views/Home/Widgets/headerWithSearchBar.dart';
import 'package:we_uno_task/views/Home/Widgets/homeSectionTitles.dart';
import 'package:we_uno_task/views/Home/Widgets/introBanner.dart';
import 'package:we_uno_task/views/Home/Widgets/introCard.dart';
import 'package:we_uno_task/views/Home/Widgets/shopHealthy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(

      // mainAxisSize: MainAxisSize.min,
      children: [
        HeaderWithSearchbar(),
        IntroBanner(),
        InteroCard(),
        HomeSectionsTitle(text: "Baby Care"),
        BabyCareCard(),
        HomeSectionsTitle(text: "Shop by Health Concerns"),
        ShopHealthy(),
        HomeSectionsTitle(text: "COVID-19 Essentials"),
        BabyCareCard(),
        HomeSectionsTitle(text: "Explore by Categories"),
        Categories()
      ],
    );
  }
}
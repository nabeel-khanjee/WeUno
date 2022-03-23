import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_uno_task/routes/routes.dart';
import 'package:we_uno_task/utils/colors.dart';
import 'package:we_uno_task/views/Cart/cart.dart';
import 'package:we_uno_task/views/Categories/categories.dart';
import 'package:we_uno_task/views/Home/home.dart';
import 'package:we_uno_task/views/More/more.dart';
import 'package:we_uno_task/views/Search/search.dart';
import 'package:we_uno_task/views/main/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RootRoute,
      routes: <String, WidgetBuilder>{
        RootRoute: ((context) => AppLayout()),
        // SearchPageRoute: ((context) => SearchScreen()),
        // CartPageRoute: ((context) => CartScreen()),
        // CategoriesPageRoute: ((context) => CategoriesScreen()),
        // MorePageRoute: ((context) => MoreScreen()),
      },
      debugShowCheckedModeBanner: false,
      title: 'WeUno Task',
      // we are using dark theme and we modify it as our need
      theme: ThemeData(
      
      ).copyWith(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),

        primaryColorDark: primaryColor,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: canvasColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white)
        //     .copyWith(
        //       bodyText1: TextStyle(color: bodyTextColor),
        //       bodyText2: TextStyle(color: bodyTextColor),
        //     ),
      ),
    );
  }
}

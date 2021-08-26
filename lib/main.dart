import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protiaa_app/view/homepage.dart';
import 'package:protiaa_app/view/post_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.fadeIn,
      getPages: [
        GetPage(
          name: '/',
          page: () => MyApp(),
        ),
        GetPage(
          name: '/HomePage',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/PostDetailsPage',
          page: () => PostDetailsPage(),
        ),
      ],
      home: HomePage(),
    );
  }
}

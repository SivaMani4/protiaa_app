import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protiaa_app/constants/colors.dart';
import 'package:protiaa_app/constants/widget_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: kScaffoldBGColor,
          elevation: 0.0,
          titleSpacing: 20.0,
          title: Container(
            width: width / 2.6,
            child: Image.asset('assets/images/applogo1.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 10.0),
              child: CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage(
                  'assets/images/thala2.jpg',
                ),
              ),
            )
          ],
        ),
        backgroundColor: kScaffoldBGColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  searchTextField(hintText: 'search...'),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: height / 2.1,
                        child: GestureDetector(
                          onTap: () {
                            Get.offNamed('/PostDetailsPage');
                          },
                          child: DribbleCard(),
                        ),
                      ),
                      Container(
                        width: width,
                        height: height / 2.2,
                        child: GestureDetector(
                          onTap: () {
                            Get.offNamed('/PostDetailsPage');
                          },
                          child: BehanceCard(),
                        ),
                      )
                    ],
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

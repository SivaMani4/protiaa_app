import 'package:flutter/material.dart';
import 'package:protiaa_app/constants/colors.dart';
import 'package:protiaa_app/constants/widget_helper.dart';
import 'package:protiaa_app/controller/dribbble_controller.dart';

class PostDetailsPage extends StatelessWidget {
  final controller = DribbbleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kScaffoldBGColor,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: kScaffoldBGColor,
        elevation: 0.0,
        toolbarHeight: 310.0,
        flexibleSpace: CustomAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
            itemCount: controller.dribbbleDetails.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                      controller.dribbbleDetails[index].leadingImageAsset),
                ),
                title: Text(
                  controller.dribbbleDetails[index].title,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  controller.dribbbleDetails[index].subTitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      controller.dribbbleDetails[index].trailingImageAsset),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: floatingActionWidget(),
    );
  }
}

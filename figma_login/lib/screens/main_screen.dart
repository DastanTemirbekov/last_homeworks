import 'package:figma_login/components/main_screen_components/main_categories_container.dart';
import 'package:figma_login/components/main_screen_components/main_flash_container.dart';
import 'package:figma_login/components/main_screen_components/main_reklama.dart';
import 'package:figma_login/constants/colors.dart';
import 'package:figma_login/constants/custom_text.dart';
import 'package:figma_login/constants/images.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskColors.mainBack,
      body: Stack(
        children: [
          Image.asset(TaskImages.mainShape),
          Container(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Главная',
                    style: TaskTexts.regular20.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MainFlashContainer(),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 253,
              ),
              Container(
                height: 572,
                padding: EdgeInsets.only(top: 44, right: 20, left: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF9F8FF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainCategoriesContainer(),
                    SizedBox(
                      height: 50,
                    ),
                    Reclama(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:figma_login/constants/custom_text.dart';
import 'package:figma_login/constants/images.dart';
import 'package:flutter/material.dart';

class MainCategoriesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Категории",
          style: TaskTexts.regular18,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                width: 107,
                height: 129,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDED9FF),
                        blurRadius: 10,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.deepPurple[400])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(TaskImages.reclamaHands),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      "Реклама",
                      style: TaskTexts.regular13,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text("106 кампаний", style: TaskTexts.regular10_),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                width: 107,
                height: 129,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDED9FF),
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.deepPurple[400])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      TaskImages.vzaimopiarMessage,
                      height: 50,
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text("Взаимопиар", style: TaskTexts.regular13),
                    SizedBox(
                      height: 3,
                    ),
                    Text("56 заявок", style: TaskTexts.regular10_),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                width: 107,
                height: 129,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDED9FF),
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.deepPurple[400])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(TaskImages.barterlike),
                    SizedBox(
                      height: 19,
                    ),
                    Text("Бартер", style: TaskTexts.regular13),
                    SizedBox(
                      height: 3,
                    ),
                    Text("245 заявок", style: TaskTexts.regular10_)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

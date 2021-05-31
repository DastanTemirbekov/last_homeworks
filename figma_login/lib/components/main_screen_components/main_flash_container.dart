import 'package:figma_login/constants/custom_text.dart';
import 'package:figma_login/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFlashContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: 
        Container( 
          padding: EdgeInsets.only(top:8),
          child:
        Image.asset(
          TaskImages.vector,
          height: 90,),

        ),
        title: Text('Начните зарабатывать', style: TaskTexts.regular15),
        subtitle: Text('Приобретите тариф Behype-PRO\nи начните свою карьеру!',
            style: TaskTexts.regular10),
      ),
    );
  }
}

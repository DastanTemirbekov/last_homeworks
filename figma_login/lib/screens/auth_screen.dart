import 'package:figma_login/constants/colors.dart';
import 'package:figma_login/constants/custom_text.dart';
import 'package:figma_login/screens/main_screen.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TaskColors.authBack,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 18, right: 18),
        color: TaskColors.authBack,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Вход',
              style: TaskTexts.regular20,
            ),
            SizedBox(
              height: 36,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: TaskColors.textfieldBack,
                hintText: 'E-mail',
                hintStyle: TextStyle(
                    fontSize: 14,
                    color: TaskColors.hintText,
                    fontFamily: 'Muller'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TaskColors.textFieldBorder),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _secureText,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _secureText = !_secureText;
                    });
                  },
                ),
                filled: true,
                fillColor: TaskColors.textfieldBack,
                hintText: 'Пароль',
                hintStyle: TextStyle(
                    fontSize: 14,
                    color: TaskColors.hintText,
                    fontFamily: 'Muller'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TaskColors.textFieldBorder),
                ),
              ),
            ),
            SizedBox(
              height: 66,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(18, 0, 18, 45),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Войти', style: TextStyle(color: Colors.white)),
                  width: 132,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF90640),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink[100],
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

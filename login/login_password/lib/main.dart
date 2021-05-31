import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'registration',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.grey[100],
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                Container(
                  /*белый внутренний контейнер*/
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 10),
                  height: 350,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border(top: BorderSide(color: Colors.black, width:1 ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          //labelText: 'Email',
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey[100],
                          filled: true,
                        ),
                        maxLength: 10,
                        // obscureText: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          //labelText: 'Password',
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey[100],
                          filled: true,
                        ),
                        maxLength: 10,
                        obscureText: true,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 20),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20),
                    children: [
                      TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: ' Sign in',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

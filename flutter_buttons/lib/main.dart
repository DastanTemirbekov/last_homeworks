import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter_buttons/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      print('Clicked');
      break;
    case 1:
      print('Clicked');
      break;
    case 2:
      print('Clicked');
      break;
  }
}

class _MyAppState extends State<MyApp> {
  String _dropDownValue;
  List<String> nums = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buttons',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Buttons',
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.red),
              child: PopupMenuButton<int>(
                color: Colors.blue[50],
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 0,
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text('change name'),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: 10),
                        Text('log out'),
                      ],
                    ),
                  ),
                ],
                onSelected: (item) => SelectedItem(context, item),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'FlatButton',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'FlatButton',
                            style: TextStyle(backgroundColor: Colors.blue),
                          ),
                        ),
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            'FlatButton',
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'FlatButton',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'RaisedButton',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          textColor: Colors.blue,
                          child: Text('RaisedButton'),
                          onPressed: () {
                            print('RaisedButton');
                          },
                        ),
                        RaisedButton(
                          
                          textColor: Colors.red,
                          child: Text('RaisedButton'),
                          onLongPress: () {
                            print('RaisedButton');
                          },
                        ),
                        RaisedButton(
                          textColor: Colors.black,
                          child: Text('RaisedButton'),
                          onLongPress: () {
                            print('RaisedButton');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'DropdownButton',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton<String>(
                        dropdownColor: Colors.teal,
                        hint: _dropDownValue == null
                            ? Text("Select num")
                            : Text(
                                _dropDownValue,
                                style: TextStyle(color: Colors.blue),
                              ),
                        isExpanded: true,
                        style: TextStyle(color: Colors.white),
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: nums
                            .map(
                              (value) => DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _dropDownValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'IconButton',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              print('IconButton');
                            },
                            iconSize: 34,
                            icon: Icon(Icons.access_alarm_sharp)),
                        IconButton(
                          icon: Icon(Icons.car_repair),
                          onPressed: () {
                            print('IconButton');
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.home_outlined),
                          onPressed: () {
                            print('IconButton');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'InkWell',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onLongPress: () {},
                          child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue)),
                        ),
                        InkWell(
                          child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text('InkWell'),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue)),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text('Tap'),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'IconButton',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlineButton(
                            color: Colors.green,
                            child: Text('Outline'),
                            onPressed: () {}),
                        OutlineButton(
                            color: Colors.green,
                            child: Text('Outline'),
                            onPressed: () {}),
                        OutlineButton(
                            color: Colors.green,
                            child: Text('Outline'),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     // fillColor: Colors.grey[100],
              //     // // filled: true,
              //   ),
              // ),
              Container(
                alignment: Alignment.bottomRight,
                child:
                    FloatingActionButton(child: Text('FAB'), onPressed: null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

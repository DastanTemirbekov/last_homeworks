import 'package:flutter/material.dart';
import 'package:flutter_staff/styles/text_styles.dart';
import 'models/employee.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Container(
                height: 400,
                padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Позвонить",
                          style: TaskTextStyle.bold20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Icon(Icons.close),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(32)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    buildNSF(TaskTextStyle.regular20, MainAxisAlignment.start,
                        Alignment.centerLeft),
                    SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () {
                        _callnumber(list.employees[widget.index].mainPhone!);
                      },
                      child: buildPhoneInfo("Основной Телефон",
                          list.employees[widget.index].mainPhone!),
                    ),
                    InkWell(
                      onTap: () {
                        _callnumber(list.employees[widget.index].workPhone!);
                      },
                      child: buildPhoneInfo(
                        "Рабочий Телефон",
                        list.employees[widget.index].workPhone!,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _callnumber(
                            list.employees[widget.index].whatsappPhone!);
                      },
                      child: buildPhoneInfo(
                        "WhatsApp",
                        list.employees[widget.index].whatsappPhone!,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  EmployeeList list = new EmployeeList();
  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // InkWell(
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //     child: Image.asset(
            //       "assets/images/backButton.png",
            //       width: 22,
            //       height: 22,
            //     ),
                // ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                list.employees[widget.index].image!,
                width: 114,
                height: 114,
              ),
            ),
            SizedBox(height: 22),
            buildNSF(TaskTextStyle.regular20, MainAxisAlignment.center,
                Alignment.center),
            SizedBox(height: 12),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(list.employees[widget.index].position!,
                  style: TaskTextStyle.regular20),
            ),
            SizedBox(
              height: 44,
            ),
            buildInfo(
              "Направление",
              list.employees[widget.index].direction!,
            ),
            buildInfo(
              "Отдел",
              list.employees[widget.index].department!,
            ),
            buildInfo(
              "Email",
              list.employees[widget.index].email!,
            ),
            buildInfo(
              "Дата рождения",
              list.employees[widget.index].birthday!,
            ),
            buildInfo(
              "Email",
              list.employees[widget.index].email!,
            ),
            InkWell(
                onTap: () {
                  _showModalBottomSheet(context);
                },
                child: buildPhoneInfo("Основной Телефон",
                    list.employees[widget.index].mainPhone!)),
            InkWell(
              onTap: () {
                _showModalBottomSheet(context);
              },
              child: buildPhoneInfo(
                "Рабочий Телефон",
                list.employees[widget.index].workPhone!,
              ),
            ),
            InkWell(
              onTap: () {
                _showModalBottomSheet(context);
              },
              child: buildPhoneInfo(
                "WhatsApp",
                list.employees[widget.index].whatsappPhone!,
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget buildNSF(TextStyle style, MainAxisAlignment mainAxisAlignment,
      Alignment alignment) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("${list.employees[widget.index].surname!}  ",
                  style: style),
            ),
            Container(
              alignment: Alignment.center,
              child:
                  Text("${list.employees[widget.index].name!}  ", style: style),
            ),
          ],
        ),
        Container(
          alignment: alignment,
          child: Text("${list.employees[widget.index].patronymic!}  ",
              style: style),
        ),
      ],
    );
  }

  void _callnumber(String number1) async {
    String number = number1;
     bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  Widget buildPhoneInfo(String title, String info) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildInfo(title, info),
        Icon(
          Icons.phone,
          color: Colors.green,
        )
      ],
    );
  }

  Widget buildInfo(
    String title,
    String info,
  ) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 14,
        ),
        Text(
          title,
          style: TaskTextStyle.regular16,
        ),
        SizedBox(height: 4),
        Text(info.toString(), style: TaskTextStyle.regular16),
        SizedBox(
          height: 14,
        ),
        Container(
          color: Colors.grey[300],
          height: 1,
        )
      ]),
    ]);
  }
}



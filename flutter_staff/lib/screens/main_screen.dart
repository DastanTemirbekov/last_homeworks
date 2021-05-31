import 'package:flutter/material.dart';

import 'deteil_screen.dart';
import 'models/employee.dart';

class Main_Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EmployeeList list = new EmployeeList();
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 44, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Сотрудники'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Поиск',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xffE8E8E8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xffE8E8E8),
                  ),
                ),
                fillColor: Color(0xffE8E8E8),
                filled: true,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "У кого сегодня день рождения",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < list.employees.length; i++)
                    buildCircleavatar(list, i, context),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "У кого завтра день рождения",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 3; i++)
                    buildCircleavatar(list, i, context),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 32,
              child: Text(
                "Все сотрудники",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            for (int i = 0; i < list.employees.length; i++)
              buildAllEmployees(list, i, context),
            SizedBox(
              height: 89,
            )
          ],
        ),
      ),
    ));
  }
}

Widget buildCircleavatar(EmployeeList list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailScreen(index: index)));
    },
    child: CircleAvatar(
      radius: 40,
      child: Image.asset(
        list.employees[index].image!,
        height: 60,
        width: 60,
      ),
    ),
  );
}

Widget buildAllEmployees(EmployeeList list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailScreen(index: index)));
    },
    child: Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width - 32,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              list.employees[index].image!,
              height: 60,
              width: 60,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("${list.employees[index].surname!}  ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        )),
                    Text(list.employees[index].name!,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ))
                  ],
                ),
                Text(list.employees[index].patronymic!,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ))
              ],
            ),
            Icon(
              Icons.phone,
              color: Colors.green,
            )
          ],
        ),
      ),
    ),
  );
}

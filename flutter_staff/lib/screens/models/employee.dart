import 'package:flutter/material.dart';
import 'package:flutter_staff/styles/colors.dart';

class Employee {
  String? image;
  String? surname;
  String? name;
  String? patronymic; //отчество
  String? position; // должность
  String? direction; // направление
  String? department; // отдел
  String? email;
  String? birthday;
  String? mainPhone;
  String? workPhone;
  String? whatsappPhone;
  // int? id;

  Employee({
    this.image,
    this.surname,
    this.name,
    this.patronymic,
    this.position,
    this.direction,
    this.department,
    this.email,
    this.birthday,
    this.mainPhone,
    this.workPhone,
    this.whatsappPhone,
  });
}

class EmployeeList {
  List<Employee> employees = [
    Employee(
      image: 'assets/images/employee1.png',
      surname: 'Жапаркулов',
      name: 'Мырзабек',
      patronymic: 'Жапаркулович',
      position: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthday: '10.12.1972',
      mainPhone: '+996551400415',
      workPhone: '+996551400415',
      whatsappPhone: '+996551400415',
    ),
    Employee(
      image: 'assets/images/employee2.png',
      surname: 'Жапаркулов',
      name: 'Мырзабек',
      patronymic: 'Жапаркулович',
      position: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthday: '10.12.1972',
      mainPhone: '+996551400415',
      workPhone: '+996551400415',
      whatsappPhone: '+996551400415',
    ),
    Employee(
      image: 'assets/images/employee5.png',
      surname: 'Асанов',
      name: 'Руслан',
      patronymic: 'Жапаркулович',
      position: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthday: '10.12.1972',
      mainPhone: '+996551400415',
      workPhone: '+996551400415',
      whatsappPhone: '+996551400415',
    ),
    Employee(
      image: 'assets/images/employee5.png',
      surname: 'Жапаркулов',
      name: 'Мырзабек',
      patronymic: 'Жапаркулович',
      position: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthday: '10.12.1972',
      mainPhone: '9965551234321',
      workPhone: '9965551234321',
      whatsappPhone: '9965551234321',
    ),
    Employee(
      image: 'assets/images/employee2.png',
      surname: 'Жапаркулов',
      name: 'Мырзабек',
      patronymic: 'Жапаркулович',
      position: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthday: '10.12.1972',
      mainPhone: '9965551234321',
      workPhone: '9965551234321',
      whatsappPhone: '9965551234321',
    ),
  ];
}

class Divides extends StatelessWidget {
  const Divides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Divider(
        color: ColorsText.lines,
        height: 0.1,
        thickness: 1,
      ),
    );
  }
}

// EmployeeList(this.employees);

// void addEmployee(employee){
//   this.employees.add(employee);
// }

// get_data(){
//   var employees =
//   EmployeeList([]);
//   employees.addEmployee(Employee(image:'assets/images/employee1.png',
//     surname: 'Жапаркулов',
//     name: 'Мырзабек',
//     patronymic: 'Жапаркулович',
//     position: 'Генеральный директор',
//     direction: 'Дирекция управления',
//     department: 'Отдел управления',
//     email: 'mjagarkulov@gosecotech.kg',
//     birthday: '10.12.1972',
//     mainPhone: '9965551234321',
//       workPhone: '9965551234321',
//        whatsappPhone: '9965551234321',
//    id: 1,
//   ));

//     employees.addEmployee(Employee(image:'assets/images/employee2.png',
//     surname: 'Жапаркулов',
//     name: 'Мырзабек',
//     patronymic: 'Жапаркулович',
//     position: 'Генеральный директор',
//     direction: 'Дирекция управления',
//     department: 'Отдел управления',
//     email: 'mjagarkulov@gosecotech.kg',
//     birthday: '10.12.1972',
//     mainPhone: '9965551234321',
//       workPhone: '9965551234321',
//        whatsappPhone: '9965551234321',
//    id: 2,
//   ));

//     employees.addEmployee(Employee(image:'assets/images/employee4.png',
//     surname: 'Жапаркулов',
//     name: 'qwerty',
//     patronymic: 'Жапаркулович',
//     position: 'Генеральный директор',
//     direction: 'Дирекция управления',
//     department: 'Отдел управления',
//     email: 'mjagarkulov@gosecotech.kg',
//     birthday: '10.12.1972',
//     mainPhone: '9965551234321',
//       workPhone: '9965551234321',
//        whatsappPhone: '9965551234321',
//    id: 3,
//   ));

//   return employees.employees;
// }

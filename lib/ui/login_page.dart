import 'dart:async';

import 'package:advance_db_class/models/employee_model.dart';
import 'package:advance_db_class/services/api_provider.dart';
import 'package:advance_db_class/ui/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController employeeNo = TextEditingController();
  final TextEditingController password = TextEditingController();

  ApiProvider apiProvider = ApiProvider();
  late Future<EmployeeModel> employeeData =
      Future.value(EmployeeModel as FutureOr<EmployeeModel>?);

  bool isObscure = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    employeeNo.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/vintage-business-customer-background-light 1.png',
          ),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Container(
            width: 472,
            height: 382,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: const EdgeInsets.fromLTRB(30, 6, 0, 6),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(61, 115, 209, 1),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15))),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: employeeNo,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'EmployeeNo',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              prefixIcon: const Icon(Icons.person)),
                        ),
                        TextField(
                          controller: password,
                          obscureText: isObscure,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              prefixIcon: const Icon(Icons.lock_open),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                                icon: Icon(isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              )),
                        ),
                        Container(
                          width: 110,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(27, 83, 197, 1)),
                          child: ElevatedButton(
                              onPressed: () {
                                Map<String, dynamic> data = {
                                  "employeeNo": employeeNo.text,
                                  "password": password.text
                                };
                                setState(() {
                                  employeeData =
                                      apiProvider.getEmployeeData(data);
                                });
                                if (employeeData != null) {
                                  Get.to(() => const MainPage());
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.sticky_note_2_outlined,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

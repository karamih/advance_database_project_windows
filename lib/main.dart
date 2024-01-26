import 'package:advance_db_class/ui/login_page.dart';
import 'package:advance_db_class/ui/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(){
  return runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

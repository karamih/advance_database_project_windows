import 'package:advance_db_class/ui/add_client_page.dart';
import 'package:advance_db_class/ui/add_order_page.dart';
import 'package:advance_db_class/ui/cashier_page.dart';
import 'package:advance_db_class/ui/edit_profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  List<String> tabs = ['Cashier', 'Add Order', 'Add Client', 'Edit Profile'];

  late TabController tabBarController =
      TabController(length: tabs.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 70,
          padding: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(61, 115, 209, 1),
          ),
          child: TabBar(
              tabAlignment: TabAlignment.start,
              controller: tabBarController,
              labelColor: Colors.yellow.shade300,
              unselectedLabelColor: Colors.white70,
              isScrollable: true,
              labelStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              indicatorColor: Colors.transparent,
              tabs: List<Tab>.generate(
                tabs.length,
                (index) => Tab(
                  text: tabs[index],
                ),
              )),
        ),
        Expanded(
          child: TabBarView(
            controller: tabBarController,
            children: const [
              CashierPage(),
              AddOrderPage(),
              AddClientPage(),
              EditProfilePage()
            ],
          ),
        )
      ],
    ));
  }
}

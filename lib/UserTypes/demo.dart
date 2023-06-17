import 'package:flutter/material.dart';

import '../core/constant.dart';
import 'Admin/Screen/admin_main_tabs.dart';
import 'Delivery/Screen/SignUp/page/sign_up.dart';
import 'ServiceProvider/Screen/sign_up/sign_up.dart';
import 'User/screen/splash_screen.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("واجهة ديمو لعرض المشروع "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              height: 60,
              color: primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SplashScreen()));
              },
              child: const Text(
                "المستخدم",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: MaterialButton(
              height: 60,
              color: primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProviderSignUp()));
              },
              child: const Text(
                "التاجر ",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: MaterialButton(
              height: 60,
              color: primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DeliverySignUp()));
              },
              child: const Text(
                "الدليفري",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: MaterialButton(
              height: 60,
              color: primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AdminMainTabs()));
              },
              child: const Text(
                "الادمن",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

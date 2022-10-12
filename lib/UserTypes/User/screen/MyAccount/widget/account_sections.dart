import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/about_us.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/app_settings.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/cards.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/contact_us.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/my_profile.dart';
import 'package:coffee_station/UserTypes/User/screen/MyOrders/page/current_order.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatefulWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  State<AccountSection> createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "حسابي",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cards(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "البطاقات",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CurrentOrders(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "طلباتي",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUS(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "من نحن",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUs(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "اتصل بنا",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    " تغيير اللغة",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppSettings(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    // SizedBox(
                    //   width: 1,
                    // ),
                    Text(
                      " الاعدادات ",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                showDialog2();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "  الشكوى",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(
                    child: Text(
                  "قدم الشكوى",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 17,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تأكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

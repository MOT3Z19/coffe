import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceProviderSideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      "أحمد يونس ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "شارع الرشيد",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  maxRadius: 40,
                  child: Image.asset("assest/images/logo.png"),
                  // backgroundImage:  Here you must add photo
                ),
              ],
            ),
            const ListTile(
              title: Text(
                ' تسجيل الدخول',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              //   onTap: () => {},
            ),

            const ListTile(
              title: Text(
                'الصفحة الرئيسية',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              //   onTap: () => {},
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            ListTile(
              title: const Text(
                'الأصناف',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'المتاجر',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'الباقات',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'بطاقاتي',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'اللغة',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'تسجيل كتاجر',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'تسجيل كمندوب',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                ' عن التطبيق',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                'سياسة الاستخدام والأحكام ',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            //   ListTile(
            //   title:
            const ListTile(
              title: Text(
                ' تسجيل الخروج  ',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                //   ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

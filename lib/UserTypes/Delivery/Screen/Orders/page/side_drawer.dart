import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliverySideDrawer extends StatefulWidget {
  @override
  State<DeliverySideDrawer> createState() => _DeliverySideDrawerState();
}

class _DeliverySideDrawerState extends State<DeliverySideDrawer> {
  String? selectedValue2;

  List<String> items2 = [
    ' عربية',
    ' انجليزية',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          " مندوب",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "أحمد يونس ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "شارع الرشيد",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
            // const Divider(
            //   color: Colors.white,
            //   thickness: 1.0,
            // ),
            SizedBox(
              height: 30,
            ),
            const ListTile(
              title: Text(
                '  عروض الطلبات',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              //   onTap: () => {},
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                ' طلباتي',
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
                'الاحصائيات',
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
                'تقييماتي',
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
                'المحفظة',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: const [
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'اللفة ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items2
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue2,
                onChanged: (value) {
                  setState(() {
                    selectedValue2 = value as String;
                  });
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                ),
                iconSize: 25,
                iconEnabledColor: Colors.black,
                buttonHeight: size.height / 25,
                buttonWidth: size.width / 2.2,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                // buttonDecoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(14),
                //   // border: Border.all(
                //   //   color: Colors.black26,
                //   // ),
                //   //
                //   //
                //   color: Colors.white,
                // ),
                buttonElevation: 2,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  // color: Colors.redAccent,
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 5,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            const ListTile(
              title: Text(
                ' الدخول كمستخدم',
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
                'الدخول كتاجر',
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

import 'dart:ui';

import 'package:coffee_station/UserTypes/User/screen/SignUp/page/sign_up.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'admin_main_tabs.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  String _selected = ' 546***** رقم الهاتف';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                // White Container
                margin: EdgeInsets.only(top: size.height / 9),
                // height: size.height,
                height: size.height - size.height / 9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height / 13,
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width / 4,
                              vertical: size.height / 12),
                          child: const Center(
                            child: Text(
                              "تسجيل الدخول",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: size.height / 13, // last change
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width / 20,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                                //    hintText: " اسم المستخدم ",
                                labelText: " اسم المستخدم ",
                                labelStyle: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: size.height / 13,
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width / 20,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                                labelText: " كلمة المرور ",
                                labelStyle: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // this line very important for correct transformation when make multi language
                          children: [
                            InkWell(
                              onTap: () {
                                showDialog1();
                              },
                              child: SizedBox(
                                width: size.width / 2.4,
                                child: Text(
                                  " هل نسيت كلمة المرور؟ ",
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 17),
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            //  showDialog2(); // this call to open message dialog

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AdminMainTabs(),
                              ),
                            );
                          },
                          child: Container(
                            width: size.width / 1.1,
                            height: size.height / 13,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width / 18,
                                vertical: size.height / 22),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "دخول",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: size.width / 2.3,
                              height: size.height / 15,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width / 33,
                                  vertical: size.height / 70),
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Center(
                                    child: Text(
                                      "Facebook",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                  Icon(
                                    Icons.facebook_outlined,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width / 2.3,
                              height: size.height / 15,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width / 30,
                                  vertical: size.height / 70),
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Center(
                                    child: Text(
                                      "Google",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                  Image.asset(
                                    "assest/images/google.png",
                                    width: size.width / 10,
                                    height: size.height / 26,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width,
                          // height: size.height / 29,
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width / 6,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignUp(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "  إنشاء حساب جديد ",
                                  style: TextStyle(
                                      fontSize: 17, color: secondaryColor),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "ليس لديك حساب؟ ",
                                style:
                                    TextStyle(fontSize: 17, color: greyColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 140,
                right: 140,
                child: Center(
                  child: Container(
                      //  margin: EdgeInsets.only(top: size.width / 60),
                      child: Image.asset("assest/images/logo.png")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //////////////////// LOGIN MESSAGES
  showDialog1() {
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
                const Text("اختار الطريقة المناسبة لك لإرسال الكود"),
              ],
            ),
            actions: <Widget>[
              ListTile(
                leading: Radio<String>(
                  value: ' 546***** رقم الهاتف',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: const Text(' 546***** رقم الهاتف'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'waradajaw****الايميل',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: const Text('waradajaw****الايميل'),
              ),
              InkWell(
                onTap: () {
                  showDialog2();
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "ارسال",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
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
                  "التحقق",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            //content: Text("body"),
            actions: <Widget>[
              Center(
                child: Text(
                  " طلبت تغيير الرقم السري نرجو ادخال الكود المرسل الى (جوالك) ",
                  style: TextStyle(color: greyColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showDialog3();
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تاكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      "    انقر هنا ",
                      style: TextStyle(fontSize: 17, color: secondaryColor),
                    ),
                    Text(
                      " لم تستلم ؟ ",
                      style: TextStyle(fontSize: 17, color: greyColor),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  showDialog3() {
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
                  "إعادة تعيين كلمة المرور",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: " كلمة المرور الجديدة",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "تآكيد كلمة المرور الجديدة ",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminLoginScreen(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "حفظ",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

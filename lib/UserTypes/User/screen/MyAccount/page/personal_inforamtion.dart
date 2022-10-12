import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'my_profile.dart';

class PersonalInforamtion extends StatefulWidget {
  const PersonalInforamtion({Key? key}) : super(key: key);

  @override
  _PersonalInforamtionState createState() => _PersonalInforamtionState();
}

class _PersonalInforamtionState extends State<PersonalInforamtion> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.center,
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
                    child: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: size.width / 4.4,
                  ),
                  const Center(
                    child: Text(
                      " تعديل البيانات الشخصية",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assest/images/man.jpg"),
                    maxRadius: 50,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: size.width / 5, left: size.width / 11),
                      width: size.width / 16,
                      height: size.width / 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                      )))
                ],
              ),
              const Text(
                "احمد محمود",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: "الاسم كامل",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' (لن يظهر للجميع ) ',
                            //     style:
                            //         TextStyle(color: Colors.grey, fontSize: 18))
                          ]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "احمد محمود",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: "اسم المستخدم ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' (سيظهر للجميع ) ',
                            //     style:
                            //         TextStyle(color: Colors.grey, fontSize: 18))
                          ]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "  احمد محمود",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: " الموقع ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' (سيظهر للجميع ) ',
                            //     style:
                            //         TextStyle(color: Colors.grey, fontSize: 18))
                          ]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "  حائل شارع الملك خالد",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: " الايميل ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' ( لن يظهر للجميع ) ',
                            //     style:
                            //         TextStyle(color: Colors.grey, fontSize: 18))
                          ]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "omarmdoughan@gamil.com",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: " رقم الهاتف ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' ( لن يظهر للجميع ) ',
                            //     style:
                            //         TextStyle(color: Colors.grey, fontSize: 18))
                          ]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: " 00966505926024",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

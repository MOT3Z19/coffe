import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/widget/profile_section.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'my_account.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: SideDrawer(),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assest/images/rectangle.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyAccount(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 4,
                          ),
                          const Center(
                            child: Text(
                              "  حسابي",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: size.width / 4,
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assest/images/man.jpg"),
                        maxRadius: 50,
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: size.width / 4, left: size.width / 11),
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
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ProfileSection(),
              //  const AccountSection(),
            ],
          ),
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
            title: const Center(
                child: Text(
              "قدم الشكوى",
              style: TextStyle(fontSize: 25),
            )),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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

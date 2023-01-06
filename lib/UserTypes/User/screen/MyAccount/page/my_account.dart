import 'package:coffee_station/UserTypes/User/screen/MyAccount/widget/account_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage("assest/images/man.jpg"),
                          maxRadius: 30,
                        ),
                        Center(
                          child: Text(
                            " احمد محمود ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Center(
                          child: Text(
                            "  حائل شارع الملك خالد ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: size.width,
                  height: size.height,
                  child: const AccountSection()),
            ],
          ),
        ),
      ),
    );
  }
}

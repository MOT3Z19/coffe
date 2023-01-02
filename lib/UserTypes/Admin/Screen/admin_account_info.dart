import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class AdminAccountInfo extends StatefulWidget {
  const AdminAccountInfo({Key? key}) : super(key: key);

  @override
  _AdminAccountInfoState createState() => _AdminAccountInfoState();
}

class _AdminAccountInfoState extends State<AdminAccountInfo> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: ServiceProviderSideDrawer(),
        ),
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
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          const Center(
                            child: Text(
                              "حسابي  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
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
                          top: size.width / 4.5, left: size.width / 11),
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
                "احمد محمود ",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Item(context, " تعديل البيانات الشخصية  "),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Item(context, "تعديل كلمة السر "),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Item(context, "تغيير اللغة"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Item(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height / 15,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_ios),
          Text(
            " $title",
            style: const TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}

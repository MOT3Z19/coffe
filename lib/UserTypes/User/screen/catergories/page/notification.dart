import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/order_details.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/payment_map5.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  _Notification1State createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
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
          child: SideDrawer(),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          const Center(
                            child: Text(
                              "الاشعارات",
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text("سعيد"),
                        Icon(Icons.person),
                      ],
                    ),
                    const Center(
                      child: Text(
                        "    المندوب في طريقه اليك",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 40,
                      color: secondaryColor,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    "رقم الطلب  102",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentMap5(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.5,
                  height: size.height / 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: const Center(
                      child: Text(
                    "انقر لتتبع المندوب",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DottedLine(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetails(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text("سعيد"),
                              Icon(Icons.person),
                            ],
                          ),
                          const Center(
                            child: Text(
                              "تم استلام طلبك نرجو التوجه نحو المتجر في الوقت ",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            size: 40,
                            color: secondaryColor,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "٥ دقائق",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          "رقم الطلب  102",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              DottedLine(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetails(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text("سعيد"),
                              Icon(Icons.person),
                            ],
                          ),
                          const Center(
                            child: Text(
                              " تم تقديم عرض جديد بنجاح ",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            size: 40,
                            color: secondaryColor,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "٥ دقائق",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          "رقم الطلب  102",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              DottedLine(),
            ],
          ),
        ),
      ),
    );
  }
}

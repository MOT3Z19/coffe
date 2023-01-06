import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool checkedValue = false;
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
                              Navigator.pop(
                                context,
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
                              "  البطاقات",
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
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 14, vertical: size.width / 45),
                child: InkWell(
                  onTap: () {
                    showDialog1();
                  },
                  child: Row(
                    children: [
                      Text(
                        " أضف بطاقة",
                        style: TextStyle(fontSize: 17, color: secondaryColor),
                      ),
                      Icon(Icons.add_circle_outline, color: secondaryColor),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.width / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/images/Card.png"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 23,
                    ),
                    const Text(
                      "Multi Card",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "xxxx   xxxx   xxxx   9999 ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height / 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Card Holder",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "David Spade",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Expiry",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "09 - 18",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.width / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/images/Card-2.png"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 23,
                    ),
                    const Text(
                      "Multi Card",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "xxxx   xxxx   xxxx   9999 ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height / 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Card Holder",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "David Spade",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Expiry",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "09 - 18",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 15,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "مواصلة التسوق",
                      style: TextStyle(color: Colors.white, fontSize: 24),
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
            title: const Center(child: Text(" اضافة بطاقة")),
            actions: <Widget>[
              Text(
                "الاسم ",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
              const Text("Warda Sobaih"),
              const Divider(),
              Text(
                "رقم البطاقة",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
              const Text("1234    5555    7777    8888"),
              const Divider(),
              Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Expiry Date",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "CVV ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: size.width / 3.7,
                    //    height: size.height/10,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 18/7  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: size.width / 3.7,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 667  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: size.width,
                //height: 70,
                child: CheckboxListTile(
                  title: const Center(
                    child: Text(
                      "هل تريد استخدام البطاقة دائما ام لا ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ), //    <-- label
                  value: checkedValue,
                  onChanged: (value) {
                    setState(() {
                      checkedValue = value!;
                    });
                  },
                ),
              ),
              Container(
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
                    "استخدم البطاقة",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import '../payment.dart';

class FullCard extends StatefulWidget {
  const FullCard({Key? key}) : super(key: key);

  @override
  State<FullCard> createState() => _FullCardState();
}

class _FullCardState extends State<FullCard> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _n = 1;
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
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
                                  builder: (context) => const HomePage(),
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
                              " سلتي",
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
              Item(context),
              Item(context),
              Item(context),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "500 ",
                      style: TextStyle(color: secondaryColor, fontSize: 25),
                    ),
                    const Text(
                      "المجموع",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment(),
                    ),
                  );
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
                      "ادفع",
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

  Widget Item(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width / 30, vertical: size.height / 60),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width / 2,
              child: Column(
                //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.cancel_outlined,
                        size: 25,
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        size: 25,
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        "120#",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_n != 0) _n--;
                          });
                        },
                        child:
                            const Icon(Icons.indeterminate_check_box_outlined),
                      ),
                      Container(
                        width: size.width / 12,
                        height: size.height / 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('$_n', style: const TextStyle(fontSize: 20.0)),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _n++;
                          });
                        },
                        child: const Icon(Icons.add_box_outlined),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      const Text(
                        " الكمية",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width / 4,
                        height: size.height / 35,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        ": كود الخصم",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assest/images/coffee4.png"),
                    Row(
                      children: [
                        Container(
                            width: size.width / 4,
                            height: size.height / 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assest/images/yellowbackground.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.local_fire_department,
                                  color: Colors.white,
                                ),
                                Center(
                                    child: Text(
                                  "خصم 10%",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
                const Text("كوفي"),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width / 10,
                          height: size.height / 30,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assest/images/leaf2.png"),
                          )),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "متجر زارا",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "٧ ريال",
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          width: size.width / 10,
                          height: size.height / 30,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assest/images/leaf.png"),
                          )),
                          child: const Center(
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

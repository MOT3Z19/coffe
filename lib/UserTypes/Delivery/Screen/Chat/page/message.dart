import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/side_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_details.dart';

class DeliveryMessage extends StatefulWidget {
  const DeliveryMessage({Key? key}) : super(key: key);

  @override
  _DeliveryMessageState createState() => _DeliveryMessageState();
}

class _DeliveryMessageState extends State<DeliveryMessage> {
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
          child: DeliverySideDrawer(),
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
                          const Icon(
                            // added by vp
                            Icons.keyboard_arrow_left_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          const Text(
                            "المحادثات",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                      builder: (context) => const DeliveryChatDetailsPage(),
                    ),
                  );
                },
                child: Chat(context),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeliveryChatDetailsPage(),
                    ),
                  );
                },
                child: Chat(context),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeliveryChatDetailsPage(),
                    ),
                  );
                },
                child: Chat(context),
              ),
              const Divider(),
              Chat(context),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Chat(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text("9 hor"),
            Container(
              width: size.width / 17,
              height: size.width / 17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.red),
              child: const Center(
                child: Text(
                  "7",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          children: const [
            Text(
              "محمد علي ",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "مرحبا محمد ",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Container(
          width: size.width / 7,
          height: size.width / 7,
          decoration:
              const ShapeDecoration(shape: CircleBorder(), color: Colors.white),
          child: const DecoratedBox(
            decoration: ShapeDecoration(
                shape: CircleBorder(),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assest/images/man.jpg"))),
          ),
        )
      ],
    );
  }
}

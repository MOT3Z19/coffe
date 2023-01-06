import 'package:coffee_station/UserTypes/User/screen/Chat/page/chat_details_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
                    child: Row(
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
                          width: size.width / 3,
                        ),
                        const Center(
                          child: Text(
                            "المحادثات",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
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
                      builder: (context) => const ChatDetailsPage(),
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
                      builder: (context) => const ChatDetailsPage(),
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
                      builder: (context) => const ChatDetailsPage(),
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
                      builder: (context) => const ChatDetailsPage(),
                    ),
                  );
                },
                child: Chat(context),
              ),
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

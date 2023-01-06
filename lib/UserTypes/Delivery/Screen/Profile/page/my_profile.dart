import 'package:coffee_station/UserTypes/Delivery/Screen/Profile/page/profile_section.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../Orders/page/side_drawer.dart';

class DeliveryProfile extends StatefulWidget {
  const DeliveryProfile({Key? key}) : super(key: key);

  @override
  _DeliveryProfileState createState() => _DeliveryProfileState();
}

class _DeliveryProfileState extends State<DeliveryProfile> {
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
                    height: size.height / 3.7,
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(width: size.width / 3),
                            const Center(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assest/images/man.jpg"),
                                maxRadius: 30,
                              ),
                            ),
                            SizedBox(width: size.width / 3),
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
                        const Center(
                          child: Text(
                            " ايما ستون ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        const Center(
                          child: Text(
                            " (مندوب) ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Center(
                              child: Text(
                                "  حائل شارع الملك خالد ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Icon(
                              Icons.location_on_outlined,
                              color: secondaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ProfileSection(),
            ],
          ),
        ),
      ),
    );
  }
}

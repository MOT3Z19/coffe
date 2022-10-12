import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/sp_notification2.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ServiceProviderNotification extends StatefulWidget {
  const ServiceProviderNotification({Key? key}) : super(key: key);

  @override
  _ServiceProviderNotificationState createState() =>
      _ServiceProviderNotificationState();
}

class _ServiceProviderNotificationState
    extends State<ServiceProviderNotification> {
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
                    child: const Center(
                      child: Text(
                        "الاشعارات",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "               المندوب في طريقه اليه",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ServiceProviderNotification2(),
                        ),
                      );
                    },
                    child: Text(
                      " انقر للتفاصيل",
                      style: TextStyle(fontSize: 20, color: secondaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              DottedLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "                    تم تقديم عرض جديد  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ServiceProviderNotification2(),
                        ),
                      );
                    },
                    child: Text(
                      " انقر للتفاصيل",
                      style: TextStyle(fontSize: 20, color: secondaryColor),
                    ),
                  ),
                ],
              ),
              DottedLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "                    تم تقديم عرض جديد  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ServiceProviderNotification2(),
                        ),
                      );
                    },
                    child: Text(
                      " انقر للتفاصيل",
                      style: TextStyle(fontSize: 20, color: secondaryColor),
                    ),
                  ),
                ],
              ),
              DottedLine(),
            ],
          ),
        ),
      ),
    );
  }
}

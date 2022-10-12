import 'dart:ui';

import 'package:coffee_station/UserTypes/Admin/Screen/service_provider_details.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'client_details.dart';

class Clients extends StatefulWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  _ClientsState createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
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
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ServiceProviderDetails(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 3,
                          ),
                          const Text(
                            "العملاء ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          // Icon(
                          //   Icons.view_headline,
                          //   color: Colors.white,
                          //   size: 40,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "السعر",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      "اسم العميل",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: const DottedLine(
                  dashLength: 13.0,
                ),
              ),
              // Divider(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "40",
                      style: TextStyle(fontSize: 22),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClientDetailss(),
                          ),
                        );
                      },
                      child: Text(
                        " محمد احمد",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "  الطلبات",
                      style: TextStyle(fontSize: 22, color: secondaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.6,
                child: const Divider(
                  thickness: 2,
                  color: Colors.black54,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "40",
                      style: TextStyle(fontSize: 22),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClientDetailss(),
                          ),
                        );
                      },
                      child: Text(
                        " محمد احمد",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "  الطلبات",
                      style: TextStyle(fontSize: 22, color: secondaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.6,
                child: const Divider(
                  thickness: 2,
                  color: Colors.black54,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "40",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      " محمد احمد",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "  الطلبات",
                      style: TextStyle(fontSize: 22, color: secondaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.6,
                child: const Divider(
                  thickness: 2,
                  color: Colors.black54,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "40",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      " محمد احمد",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "  الطلبات",
                      style: TextStyle(fontSize: 22, color: secondaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.6,
                child: const Divider(
                  thickness: 2,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

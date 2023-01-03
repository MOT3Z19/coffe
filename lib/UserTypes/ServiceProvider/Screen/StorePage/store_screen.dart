import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Branch/page/add_new_branch.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/statistics.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/store_product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceProviderStorePage extends StatefulWidget {
  const ServiceProviderStorePage({Key? key}) : super(key: key);

  @override
  _ServiceProviderStorePageState createState() =>
      _ServiceProviderStorePageState();
}

class _ServiceProviderStorePageState extends State<ServiceProviderStorePage> {
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
                  Stack(
                    children: [
                      Image.asset(
                        "assest/images/zara.png",
                        width: size.width,
                        height: size.height / 2,
                        fit: BoxFit.fill,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: size.height / 19, left: 14),
                          child: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 3),
                    height: size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddNewBranch(),
                                  ),
                                );
                              },
                              child: Text(
                                "  تعديل",
                                style: TextStyle(
                                    fontSize: 20, color: secondaryColor),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "متجر زارا",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )
                          ],
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Container(
                          margin: EdgeInsets.only(right: size.width / 6.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "الوصف",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.height / 30,
                              vertical: size.height / 65),
                          child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                        ),
                        const Divider(
                          thickness: 1.0,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "مواعيد العمل",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          " من 9 صباحا الى 10 صباحا",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          " رقم المتجر للتواصل",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          "00966505926024",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  child: Icon(
                                Icons.location_on_rounded,
                                color: brownColor,
                              )),
                              const Text(
                                "  جدة، الرمال ، شارع الامير محمد",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Statistics(),
                              ),
                            );
                          },
                          child: Container(
                            width: size.width / 1.1,
                            height: size.height / 13,
                            margin: const EdgeInsets.only(top: 2),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "احصائيات الفرع",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StoreProducts(),
                              ),
                            );
                          },
                          child: Container(
                            width: size.width / 1.1,
                            height: size.height / 13,
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "تصفح منتجات الفرع",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

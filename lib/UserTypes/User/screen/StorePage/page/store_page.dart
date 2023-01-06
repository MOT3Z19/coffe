// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/store_product.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/payment_map.dart';
import 'package:coffee_station/UserTypes/User/screen/StorePage/page/store_product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
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
                  Image.asset(
                    "assest/images/zara.png",
                    width: size.width,
                    height: size.height / 2,
                    fit: BoxFit.fill,
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
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "فرع الكورنيش 0110",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            Text(
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
                              horizontal: size.height / 40, vertical: 2),
                          child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                        ),
                        const Divider(
                          thickness: 1.0,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "مواعيد العمل : من 9 صباحا الى 10 صباحا ",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const Text(
                          " رقم المتجر للتواصل: 00966505926024",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PaymentMap(),
                                      ),
                                    );
                                  },
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
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(
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
                              margin: EdgeInsets.only(top: size.height / 60),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  "  تصفح منتجات المتجر",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: size.width / 5,
                      height: size.height / 8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assest/images/tringle.png"),
                      )),
                      margin: EdgeInsets.only(
                          top: size.height / 3.8, left: size.width / 9),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 45, left: 20),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
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

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "تم الإضافة الى السلة",
              style: TextStyle(fontSize: 25),
            )),
            actions: <Widget>[
              Container(
                width: size.width / 1.1,
                height: size.height / 14,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "الاستمرار بالتوسق",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                width: size.width / 1,
                height: size.height / 14,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "يكفي",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

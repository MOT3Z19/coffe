import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/order_details.dart';
import 'package:coffee_station/UserTypes/Delivery/Screen/offer/page/offer_details.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class GoogleMap1 extends StatefulWidget {
  const GoogleMap1({Key? key}) : super(key: key);

  @override
  State<GoogleMap1> createState() => _GoogleMap1State();
}

class _GoogleMap1State extends State<GoogleMap1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assest/images/map.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: const Icon(
                        // added by vp
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2.7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderDetails(),
                          ),
                        );
                      },
                      child: const Center(
                        child: Text(
                          "102#",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: size.width,
                  height: size.height / 5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("تحديد الموقع "),
                        Text(
                          " النقرة , حائل 5345 , المملكة العربية السعودية",
                          style: TextStyle(
                            color: secondaryColor,
                          ),
                        ),
                        const Text("مكان المرسل اليه الطلب "),
                        const Text(
                          "انقر لتحديد موقع الاستلام ",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Image.asset("assest/images/track.png"),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      context: context,
                      builder: (context) {
                        return Wrap(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              width: size.width / 1.1,
                              height: size.height / 3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Text(
                                          " احمد محمد ",
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        " خالد بن الوليد  ",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Icon(Icons.location_on_outlined),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        " ٥ دقائق متبقية ",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const OfferDetails(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: size.width / 1,
                                      height: size.height / 17,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "تقديم عرض",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width / 8,
                        height: size.width / 8,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.send,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

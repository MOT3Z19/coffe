import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceProviderNotification2 extends StatefulWidget {
  const ServiceProviderNotification2({Key? key}) : super(key: key);

  @override
  _ServiceProviderNotification2State createState() =>
      _ServiceProviderNotification2State();
}

class _ServiceProviderNotification2State
    extends State<ServiceProviderNotification2> {
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
          child: ServiceProviderSideDrawer(),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ServiceProviderHomePage(),
                                ),
                              );
                            },
                            child: const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          const Center(
                            child: Text(
                              "الاشعارات",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    " يوجد طلب جديد",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "طريقة الدفع : عن طريق المتجر",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "اسم الزبون: احمد مرتجى",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "        اسم الفرع: فرع زارا",
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_sharp,
                        size: 20,
                      ),
                      Text(
                        "الموقع:شارع خالد بن الوليد",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                  Text(
                    "رجوع",
                    style: TextStyle(fontSize: 20, color: secondaryColor),
                  ),
                ],
              ),
              const DottedLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    " تم بدء توصيل المنتج  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    " باقي للوصول : ١٠ دقائق ",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "اسم المندوب: احمد مرتجى",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                  Text(
                    " انقر للتفاصيل",
                    style: TextStyle(fontSize: 20, color: secondaryColor),
                  ),
                ],
              ),
              const DottedLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "  تم توصيل الطلب  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "سعر التوصيل : ١٠ ريال ",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "سعر المنتج :  ١٠ ريال",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "التكلفة الاجمالية : ١٠ ريال ",
                    style: TextStyle(fontSize: 15),
                  ),
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
                  Text(
                    " انقر للتفاصيل",
                    style: TextStyle(fontSize: 20, color: secondaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                "تقييم المندوب",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assest/images/man.jpg"),
                        maxRadius: 50,
                      ),
                      const Text(
                        "احمد محمود ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 35,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width / 20,
                        ),
                        height: size.height / 9.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(
                            child: Text("  احمد سائق جيد وامين  ")),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:coffee_station/UserTypes/User/screen/SignUp/page/sign_up.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class GoogleMap extends StatefulWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  _GoogleMapState createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/images/map.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //  child:

              Column(
                children: [
                  Container(
                    width: size.width / 1.3,
                    height: size.height / 17,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    margin: EdgeInsets.only(top: size.height / 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 20,
                        ),
                        label: const Text("ابحث هنا"),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: boxColor),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 30),
                    width: size.width / 1.1,
                    height: size.height / 9,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                        child: Text(
                      "نرجو تحديد موقعك حتى يتم عرض أقرب المتاجر اليك",
                      style: TextStyle(fontSize: 17),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 15),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 100,
                      color: secondaryColor,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width / 1.4),
                    child: Column(
                      children: [
                        Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 4.25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width / 2.5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "تأكيد",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width / 2.5,
                          height: size.height / 16,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "تخطي تحديد الموقع",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

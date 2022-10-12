import 'package:coffee_station/UserTypes/Delivery/Screen/SignUp/page/sign_up.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import '../main_tabs.dart';

class BunchScreen extends StatefulWidget {
  const BunchScreen({Key? key}) : super(key: key);

  @override
  _BunchScreenState createState() => _BunchScreenState();
}

class _BunchScreenState extends State<BunchScreen> {
  bool value = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool checkedValue = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DeliverySignUp(),
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
                        SizedBox(
                          width: size.width / 4,
                        ),
                        const Center(
                          child: Text(
                            "   أضف  باقة ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                "اختر باقة الاشتراك",
                style: TextStyle(fontSize: 20),
              )),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: size.width / 1.2,
                height: size.height / 12,
                decoration: BoxDecoration(
                  color: greyColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (valuee) {
                        setState(() {
                          value = valuee!;
                        });
                      },
                    ),
                    Expanded(
                      child: const Text(
                        "باقة 100 ريال للتسجيل فقط مرة واحدة ثلاثة عروض يوميا",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width / 1.2,
                height: size.height / 15,
                decoration: BoxDecoration(
                  color: greyColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      value: value2,
                      onChanged: (valuee) {
                        setState(() {
                          value2 = valuee!;
                        });
                      },
                    ),
                    Expanded(
                      child: const Text(
                        " باقة 200 ريال سنويا مندوب مميز 5 عروض يوميا",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width / 1.2,
                height: size.height / 15,
                decoration: BoxDecoration(
                  color: greyColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      value: value3,
                      onChanged: (valuee) {
                        setState(() {
                          value3 = valuee!;
                        });
                      },
                    ),
                    Expanded(
                      child: const Text(
                        " باقة 300 ريال سنويا 10 عروض يومي",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   width: size.width / 1.2,
              //   height: size.height / 15,
              //   decoration: BoxDecoration(
              //     color: greyColor2,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Checkbox(
              //         value: value4,
              //         onChanged: (valuee) {
              //           setState(() {
              //             value4 = valuee!;
              //           });
              //         },
              //       ),
              //       Expanded(
              //         child: const Text(
              //           "باقة مجانية",
              //           style: TextStyle(fontSize: 15),
              //           textAlign: TextAlign.center,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      ":طريقة الدفع",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text(" تحويل"), //    <-- label
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text("الكتروني "), //    <-- label
                      value: checkedValue2,
                      onChanged: (value) {
                        setState(() {
                          checkedValue2 = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text(" كاش"), //    <-- label
                      value: checkedValue3,
                      onChanged: (value) {
                        setState(() {
                          checkedValue3 = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showDialog1();
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تاكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(
                    child: Text(
                  "تاكيد حالة الدفع ",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            //content: Text("body"),
            actions: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Center(
                  child: Text(
                    "نرجو التوجه الى اقرب فرع او التحويل الى حسابنا رقم 123456 بنك البارا وارسال صورة منها على ايمال ... او واتس على جوال ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DelvieryMainTabs(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تاكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

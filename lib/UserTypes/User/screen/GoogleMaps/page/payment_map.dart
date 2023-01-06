import 'package:coffee_station/UserTypes/User/screen/Cart/payment3.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/notification.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class PaymentMap extends StatefulWidget {
  const PaymentMap({Key? key}) : super(key: key);

  @override
  State<PaymentMap> createState() => _PaymentMapState();
}

class _PaymentMapState extends State<PaymentMap> {
  String? selectedValue;
  List<String> items = ['#200', '#300', '#400'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: InkWell(
            onTap: () {
              showDialog3();
            },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    ' # رقم الطلب 100   ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                            ),
                            iconSize: 25,
                            iconEnabledColor: Colors.black,
                            buttonHeight: size.height / 20,
                            buttonWidth: size.width / 2,
                            buttonPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            buttonElevation: 2,
                            itemHeight: 40,
                            itemPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            dropdownMaxHeight: 200,
                            dropdownWidth: 200,
                            dropdownPadding: null,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              // color: Colors.redAccent,
                            ),
                            dropdownElevation: 8,
                            scrollbarRadius: const Radius.circular(40),
                            scrollbarThickness: 5,
                            scrollbarAlwaysShow: true,
                            // offset: const Offset(-20, 0),
                          ),
                        ),
                      ),
                      const Icon(Icons.search),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      showDialog2();
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: size.width,
                      height: size.height / 5.7,
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
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 30),
                    child: Image.asset("assest/images/track.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                                    height: size.height / 5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: const [
                                              Text(
                                                " تكلفة التوصيل ٧ ريال ",
                                                style: TextStyle(fontSize: 25),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Payement3(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: size.width / 1,
                                            height: size.height / 17,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 20),
                                            decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "دفع ",
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
                        child: Container(
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
                      ),
                    ],
                  ),
                  InkWell(
                    // onTap: () {
                    //   showDialog2();
                    // },
                    child: Container(
                      width: size.width / 1,
                      height: size.height / 17,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 60),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "تآكيد",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            title: Center(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back)),
                  ],
                ),
                const Text(
                  "  تم قبول طلبك لدى التاجر وجاري التجهيز",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            )),
            actions: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notification1(),
                          ),
                        );
                      },
                      child: const Text(
                        "تتبع الاشعارات",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Text("رقم التواصل "),
                    const Text("00966505926024"),
                    Image.asset("assest/images/confiramtionImage.png"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  showDialog3() {
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
                        child: const Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(
                    child: Text(
                  "تم ارسال طلب التوصيل للمندوبين بنجاح",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
              ],
            ),
            actions: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(" انتظر لتلقي العروض"),
                    const Text("رقم التواصل "),
                    const Text("00966505926024"),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset("assest/images/delivery.png"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}

import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class PaymentMap4 extends StatefulWidget {
  const PaymentMap4({Key? key}) : super(key: key);

  @override
  State<PaymentMap4> createState() => _PaymentMap4State();
}

class _PaymentMap4State extends State<PaymentMap4> {
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
              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    const Icon(Icons.chat_outlined),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      width: size.width / 2,
                      height: size.height / 17,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(" رقم الطلب 120 "),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: size.width,
                  height: size.height / 7,
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
                Row(
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
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    showDialog2();
                  },
                  child: Container(
                    width: size.width / 1,
                    height: size.height / 17,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 90),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              "تم ارسال طلب التوصيل للمندوبين بنجاح",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
            actions: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(" انتظر لتلقي العروض"),
                    const Text("رقم التواصل "),
                    const Text("+972595925"),
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

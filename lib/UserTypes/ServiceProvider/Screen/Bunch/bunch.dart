import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import '../sp_card.dart';

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
                        "    أضف  باقة ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
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
                height: size.height / 15,
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
                    const Text(
                      "باقة ١٠٠ ريال ٢٥ منتج لليوم الواحد",
                      style: TextStyle(fontSize: 15),
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
                    const Text(
                      "باقة ١٠٠ ريال ٢٥ منتج لليوم الواحد",
                      style: TextStyle(fontSize: 15),
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
                    const Text(
                      "باقة ١٠٠ ريال ٢٥ منتج لليوم الواحد",
                      style: TextStyle(fontSize: 15),
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
                      value: value4,
                      onChanged: (valuee) {
                        setState(() {
                          value4 = valuee!;
                        });
                      },
                    ),
                    const Text(
                      "باقة ١٠٠ ريال ٢٥ منتج لليوم الواحد",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SPCards(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
}

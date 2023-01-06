import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/notification.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Payement3 extends StatefulWidget {
  const Payement3({Key? key}) : super(key: key);

  @override
  _Payement3State createState() => _Payement3State();
}

class _Payement3State extends State<Payement3> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool checkedValue = false;
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
          child: SideDrawer(),
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
                      //  margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(
                                    context,
                                  );
                                },
                                child: const Icon(
                                  Icons.keyboard_arrow_left_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "  الدفع بالبطاقة",
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Row(
                        children: [
                          Text(
                            "أضف بطاقة",
                            style:
                                TextStyle(fontSize: 15, color: secondaryColor),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: secondaryColor,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "اختر البطاقة",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.navigate_before_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.navigate_next_outlined,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                width: size.width,
                height: size.height / 11,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assest/images/mastercard.png",
                      fit: BoxFit.fill,
                      width: 150,
                    ),
                    Image.asset(
                      "assest/images/mastercard.png",
                      fit: BoxFit.fill,
                      width: 150,
                    ),
                    Image.asset(
                      "assest/images/mastercard.png",
                      fit: BoxFit.fill,
                      width: 150,
                    ),
                    Image.asset(
                      "assest/images/mastercard.png",
                      fit: BoxFit.fill,
                      width: 150,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "اسم البطاقة",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      " warda jawad",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "رقم البطاقة",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "3333 6666 9999 ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
              ),
              Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Expiry Date",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "CVV ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: size.width / 2.5,
                    //    height: size.height/10,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 18/7  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: size.width / 2.5,
                    //    height: size.height/10,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 667  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 4.4,
                    height: size.height / 18,
                    // margin: const EdgeInsets.symmetric(
                    //   horizontal: 4,
                    // ),
                    child: const TextField(
                      decoration: InputDecoration(
                        label: Text("اسم البطاقة"),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 1.5,
                    child: CheckboxListTile(
                      title: Center(
                        child: Text(
                          " حفظ البطاقة للاستخدام لاحقا",
                          style: TextStyle(color: secondaryColor, fontSize: 15),
                        ),
                      ), //    <-- label
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showDialog4();
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 17,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "ادفع",
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
            title: const Center(child: Text(" اضافة بطاقة")),
            actions: <Widget>[
              Text(
                "الاسم ",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
              const Text("Warda Sobaih"),
              const Divider(),
              Text(
                "رقم البطاقة",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
              const Text("1234    5555    7777    8888"),
              const Divider(),
              Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Expiry Date",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "CVV ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: size.width / 3.7,
                    //    height: size.height/10,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 18/7  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: size.width / 3.7,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 667  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: size.width,
                //height: 70,
                child: CheckboxListTile(
                  title: const Center(
                    child: Text(
                      "هل تريد استخدام البطاقة دائما ام لا ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ), //    <-- label
                  value: checkedValue,
                  onChanged: (value) {
                    setState(() {
                      checkedValue = value!;
                    });
                  },
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "استخدم البطاقة",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
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
            title: const Center(child: Text(" البيانات المدخلة غير صحيحة ")),
            actions: <Widget>[
              const Center(child: Text("هناك خلل تأكد من بيانات البطاقة")),
              const Center(
                child: Icon(
                  Icons.cancel,
                  size: 100,
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: size.width / 5,
                    height: size.height / 19,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "الدفع نقدا",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 19,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        " بطاقة جديدة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 19,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "  أعادة المحاولة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
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

  showDialog4() {
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
}

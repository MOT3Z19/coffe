import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'delivery_account.dart';

class DeliveryChangePassword extends StatefulWidget {
  const DeliveryChangePassword({Key? key}) : super(key: key);

  @override
  _DeliveryChangePasswordState createState() => _DeliveryChangePasswordState();
}

class _DeliveryChangePasswordState extends State<DeliveryChangePassword> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  String _selected = ' 546***** رقم الهاتف';
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
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryAccount(),
                          ),
                        );
                      },
                      child: const Icon(
                        // added by vp
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    const Center(
                      child: Text(
                        " تعديل كلمة المرور ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: const Icon(
                        Icons.view_headline,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assest/images/man.jpg"),
                    maxRadius: 50,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: size.width / 4.5, left: size.width / 11),
                      width: size.width / 16,
                      height: size.width / 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                      )))
                ],
              ),
              const Text(
                "احمد محمود ",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: " كلمة المرور الجديدة",
                    // hintText: "XXXXXXXX ",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "  تاكيد كلمة المرور الجديدة",
                    //  hintText: "XXXXXXXX ",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {
                  showDialog2();
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
                      "حفظ",
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
            title: const Text("اختار الطريقة المناسبة لك لإرسال الكود"),
            actions: <Widget>[
              ListTile(
                leading: Radio<String>(
                  value: ' 546***** رقم الهاتف',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: const Text(' 546***** رقم الهاتف'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'waradajaw****الايميل',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: const Text('waradajaw****الايميل'),
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
                    "ارسال",
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
                  "التحقق",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            //content: Text("body"),
            actions: <Widget>[
              Center(
                child: Text(
                  " طلبت تغيير الرقم السري نرجو ادخال الكود المرسل الى (جوالك) ",
                  style: TextStyle(color: greyColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
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
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      "    انقر هنا ",
                      style: TextStyle(fontSize: 17, color: secondaryColor),
                    ),
                    Text(
                      " لم تستلم ؟ ",
                      style: TextStyle(fontSize: 17, color: greyColor),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

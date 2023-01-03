// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class ServiceProviderSweetPage extends StatefulWidget {
  const ServiceProviderSweetPage({Key? key}) : super(key: key);

  @override
  _ServiceProviderSweetPageState createState() =>
      _ServiceProviderSweetPageState();
}

class _ServiceProviderSweetPageState extends State<ServiceProviderSweetPage> {
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
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                          const Text(
                            "الاصناف ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: size.height / 6.5),
                    margin: EdgeInsets.only(
                        top: size.height / (6.5 - 1.5) - size.height / 19 / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: size.width / 4,
                          height: size.height / 19,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "الخصومات",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 4,
                          height: size.height / 19,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "المندوبين",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 3.5,
                          height: size.height / 19,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "الاحصائيات",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.3,
                height: size.height / 18,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 25.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 10  horizontally
                        1.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.only(top: 30),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    label: Text("ابحث هنا"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: size.width / 5,
                      height: size.height / 18.5,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 10  horizontally
                              1.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.keyboard_arrow_down_rounded),
                          Center(
                            child: Text(
                              "الدمام",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width / 5,
                      height: size.height / 18.5,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 10  horizontally
                              1.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.keyboard_arrow_down_rounded),
                          Center(
                            child: Text(
                              " جديد",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width / 5,
                      height: size.height / 18.5,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 10  horizontally
                              1.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.keyboard_arrow_down_rounded),
                          Center(
                            child: Text(
                              " الفرع",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
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
                                const ServiceProviderSweetPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 5,
                        height: size.height / 18.5,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 10  horizontally
                                1.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.keyboard_arrow_down_rounded),
                            Center(
                              child: Text(
                                " الاصناف",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog1();
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "آضف مقترح لصنف جديد",
                        style: TextStyle(color: secondaryColor),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.add_circle_outline_outlined,
                          color: secondaryColor),
                    ],
                  ),
                ),
              ),
              ///////
              Item(context),
              Item(context),
              Item(context),

              ////
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
          return SingleChildScrollView(
            child: AlertDialog(
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
                    "   أضف مقترحك للصنف",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              actions: <Widget>[
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "  الاسم الرئيسي ",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "الاسم الفرعي",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: " الوصف للصنف",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: " ملاحظة",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: size.width / 60,
                      ),
                      child: const Center(
                        child: Text(
                          "اضف صورة",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: size.width / 4,
                        height: size.height / 10,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: const Center(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Center(
                                child: Icon(
                                  Icons.file_upload,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    showDialog2();
                  },
                  child: Container(
                    width: size.width / 1.1,
                    height: size.height / 13,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
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
            title: const Center(
                child: Text(
              "مقترحك محل اهتمامنا",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            actions: <Widget>[
              const Center(
                  child: Text(
                "سوف يتم دراسته وافادتك بالنتيجة",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              InkWell(
                onTap: () {},
                child: Container(
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
                      "تآكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  Widget Item(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width / 40 * 0,
          vertical: size.height / 60), //vp changed to width and /60
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // vp says try right&left
        children: [
          Column(
            children: [
              const Icon(Icons.keyboard_arrow_up_outlined),
              SizedBox(
                width: size.width / 2.9, // changed by vp from 2.7 to 2.9
                height: size.height / 4,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: size.width / 2.9, // changed by vp from 2.7 to 2.9
                      height: size.height / 8, // changed by vp from 7 to 8
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/sweet2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog1();
                                },
                                child: const Text(
                                  " تعديل",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: size.height /
                                    25), // vp changed from 10 to 12
                            // EdgeInsets.only(top: size.height / 10),
                            child: const Center(
                              child: Text(
                                " حلويات شرقية",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5, // changed by vp from 10 to 5
                      //   height: 10,
                    ),
                    Container(
                      width: size.width / 2.9, // changed by vp from 2.7 to 2.9
                      height: size.height / 8, // changed by vp from 7 to 8
                      // width: size.width / 2.7,
                      // height: size.height / 7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/sweet4.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog1();
                                },
                                child: const Text(
                                  " تعديل",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: size.height /
                                    25), // vp changed from 10 to 12
                            // EdgeInsets.only(top: size.height / 10),
                            child: const Center(
                              child: Text(
                                " حلويات غربية",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5, // changed by vp from 10 to 5
                      // height: 10,
                    ),
                    Container(
                      width: size.width / 3, // changed by vp from 2.7 to 2.9
                      height: size.height / 8, // changed by vp from 7 to 8
                      // width: size.width / 2.7,
                      // height: size.height / 7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/sweet2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog1();
                                },
                                child: const Text(
                                  " تعديل",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: size.height /
                                    25), // vp changed from 10 to 12
                            // EdgeInsets.only(top: size.height / 10),
                            child: const Center(
                              child: Text(
                                " حلويات هندية",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
          ///////
          Container(
            width: size.width *
                2 /
                3 *
                .90, // vp says we can make p2=p1/(p1-1)*s% p1=1st cont. Dvdr, p2=2nd, s% space%
            // width: size.width / 2,
            height: size.height / 4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assest/images/sweet.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: const Text(
                        " تعديل",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: size.height / 9,
                  ),
                  child: const Text(
                    "صنف الحلويات",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

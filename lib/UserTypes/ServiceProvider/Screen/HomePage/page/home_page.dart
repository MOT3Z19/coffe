import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Branch/page/add_new_branch.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/service_provider_delegations_screen.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/sp_sweet_page.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/statistics.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/store_page.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/store_screen.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/product/sp_product_page.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class ServiceProviderHomePage extends StatefulWidget {
  const ServiceProviderHomePage({Key? key}) : super(key: key);

  @override
  _ServiceProviderHomePageState createState() =>
      _ServiceProviderHomePageState();
}

class _ServiceProviderHomePageState extends State<ServiceProviderHomePage> {
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
                            Icons.keyboard_arrow_left_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                          const Text(
                            "الصفحة الرئيسية",
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
                                blurRadius: 25.0,
                                spreadRadius: 5.0,
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceProviderDelegationsScreen(),
                              ),
                            );
                          },
                          child: Container(
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Statistics(),
                              ),
                            );
                          },
                          child: Container(
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
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
                height: size.height / 17,
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
                margin: EdgeInsets.only(top: size.width / 15),
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
              SizedBox(
                // added by vp
                height: size.height / 60,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 9, vertical: size.height / 35 * 0),
                child: InkWell(
                  onTap: () {
                    showDialog1();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "أضف مقترح جديد",
                            style: TextStyle(color: secondaryColor),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.add_circle_outline_outlined,
                              color: secondaryColor),
                        ],
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
                        child: const Text(
                          "الاصناف",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: size.width / 2.7,
                          height: size.height / 7,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assest/images/juice.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              const Center(
                                child: Text(
                                  "صنف العصائر",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width / 2.7,
                          height: size.height / 7,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assest/images/nut.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              const Center(
                                child: Text(
                                  "صنف المكسرات",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: size.width / 2,
                      height: size.height / 3.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/sweets.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const Center(
                            child: Text(
                              "صنف الحلويات",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.navigate_before),
                  Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.height / 80 * 0,
                  // vertical: size.height / 25,
                ),
                width: size.width,
                height: size.height / 9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: size.width / 2.9,
                      height: size.height / 6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/veg.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: size.width / 2.9,
                      height: size.height / 6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/spacice.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: size.width / 2.9,
                      height: size.height / 6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/veg.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: size.width / 2.9,
                      height: size.height / 6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/spacice.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.navigate_before),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width / 9, vertical: size.height / 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddNewBranch(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "أضف فرع جديد",
                                style: TextStyle(color: secondaryColor),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.add_circle_outline_outlined,
                                  color: secondaryColor),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5.5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceProviderStoreScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "الفروع",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.width / 80 * 0,
                ),
                width: size.width,
                height: size.height / 9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceProviderStorePage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: size.width / 2.9,
                        height: size.height / 6,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assest/images/store1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AddNewBranch(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    " تعديل",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceProviderStorePage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: size.width / 2.9,
                        height: size.height / 6,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assest/images/store2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AddNewBranch(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    " تعديل",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: size.width / 2.9,
                      height: size.height / 6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/store1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AddNewBranch(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  " تعديل",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: size.width / 2.9,
                      height: size.height / 6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/store2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AddNewBranch(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  " تعديل",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.navigate_before),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const AddNewBranch(),
                      //   ),
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width / 9,
                          vertical: size.height / 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "آضف عرض جديد",
                                style: TextStyle(color: secondaryColor),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.add_circle_outline_outlined,
                                  color: secondaryColor),
                            ],
                          ),
                          SizedBox(
                            width: size.width / 5.5,
                          ),
                          const Text(
                            "العروض",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: size.height / 50, horizontal: size.width / 20),
                width: size.width,
                height: size.height / 4,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceProviderProductPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/coffee4.png",
                                    fit: BoxFit.fill,
                                    width: size.width / 3,
                                    height: size.height / 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: size.width / 5,
                                          height: size.height / 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assest/images/yellowbackground.png",
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.local_fire_department,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              Center(
                                                  child: Text(
                                                "خصم 10 ",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ],
                                          )),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "٧ ريال",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text("كوفي"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.navigate_before),
                  Container(
                    margin: EdgeInsets.only(
                      left: size.width / 2.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "وصل حديثاً",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.height / 30,
                ),
                width: size.width,
                height: size.height / 6.4, // need
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceProviderProductPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    " كوفي",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    " ريال 18",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                "assest/images/coffee3.png",
                                // fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
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
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 20, vertical: 10),
                  height: size.height / 8,
                  child: const TextField(
                    maxLines: 9,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "الوصف للصنف",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 20, vertical: 10),
                  height: size.height / 8,
                  child: const TextField(
                    maxLines: 9,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "الملاحظات",
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
                        "حسنا",
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
                  "مقترحك محل اهتمامنا",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ),
            actions: <Widget>[
              const Center(
                  child: Text(
                "سوف يتم دراسته وافادتك بالنتيجة",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ServiceProviderHomePage(),
                    ),
                  );
                },
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
}

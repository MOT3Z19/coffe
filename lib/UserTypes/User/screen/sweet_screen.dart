import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'HomePage/page/home_page.dart';
import 'HomePage/page/side_drawar.dart';
import 'StorePage/page/store_page.dart';
import 'StorePage/page/store_product.dart';
import 'catergories/page/delegations_offer_screen.dart';
import 'catergories/page/discount.dart';
import 'catergories/page/product.dart';
import 'catergories/page/stores.dart';

class SweetPage extends StatefulWidget {
  const SweetPage({Key? key}) : super(key: key);

  @override
  _SweetPageState createState() => _SweetPageState();
}

class _SweetPageState extends State<SweetPage> {
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
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
                                //added by vp
                                width: size.width / 4, // vp should be var
                              ),
                            ],
                          ),
                          const Text(
                            "الاصناف",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            //added by vp
                            width: size.width / 4, // vp should be var
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
                    margin: EdgeInsets.only(
                        top: size.height / (6.5 - 1.5) - size.height / 19 / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DiscountScreen(),
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
                                "الخصومات",
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
                                builder: (context) =>
                                    const delegationsOfferScreen(),
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
                                builder: (context) => const ProductsScreen(),
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
                                "المنتجات",
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
                margin: EdgeInsets.only(top: size.height / 40), // added by vp
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
                //    margin: const EdgeInsets.only(top: 30),
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
                    horizontal: size.width / 9 * 0,
                    vertical: size.height / 60), // added by vp
                //  margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        width: size.width / 5,
                        height: size.height / 30, // vp changed for 18.5 to 30
                        //  height: size.height / 18.5,
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: size.width / 5,
                        height: size.height / 30, // vp changed for 18.5 to 30
                        // height: size.height / 18.5,
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
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
                            builder: (context) => const StorePage(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 5,
                        height: size.height / 30, // vp changed for 18.5 to 30
                        //   height: size.height / 18.5,
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
                                " المتجر",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: size.width / 5,
                        height: size.height / 30, // vp changed for 18.5 to 30
                        // height: size.height / 18.5,
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
              SweetStore(context),
              SweetStore(context),
              SweetStore(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width / 2.5,
                    height: size.width / 10,
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
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.only(top: size.height / 45),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 20,
                        ),
                        label: const Text(" حسب التقييم"),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: boxColor),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StoreScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "متاجر الحلويات",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SweetStore(BuildContext context) {
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
                //  width: size.width / 2.7,
                height: size.height / 4,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: size.width / 2.9, // changed by vp from 2.7 to 2.9
                      height: size.height / 8, // changed by vp from 7 to 8
                      // width: size.width / 2.7,
                      // height: size.height / 7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/sweet2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: size.height / 14), // vp changed from 10 to 12
                        // EdgeInsets.only(top: size.height / 10),
                        child: const Center(
                          child: Text(
                            " حلويات شرقية",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
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
                      child: Container(
                        margin: EdgeInsets.only(
                            top: size.height / 14), // vp changed from 10 to 12
                        // EdgeInsets.only(top: size.height / 12),
                        child: const Center(
                          child: Text(
                            " حلويات غربية",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
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
                      child: Container(
                        margin: EdgeInsets.only(
                            top: size.height / 14), // vp changed from 10 to 12
                        // EdgeInsets.only(top: size.height / 10),
                        child: const Center(
                          child: Text(
                            " حلويات هندية",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
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
            child: Container(
              margin:
                  EdgeInsets.only(top: size.height / 3.7, left: size.width / 6),
              child: const Text(
                "صنف الحلويات",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Store(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StoreProducts(),
          ),
        );
      },
      child: Container(
        width: size.width / 1.1,
        height: size.height / 7.5,
        decoration: const BoxDecoration(
          boxShadow: [
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
          // borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "متجر زارا",
                  style: TextStyle(fontSize: 17),
                ),
                const Text(
                  "فرع الكورنيش 0110",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "الكويت",
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on_rounded,
                      color: secondaryColor,
                    )
                  ],
                ),
              ],
            ),
            Container(
              width: size.width / 2.2,
              height: size.height / 8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assest/images/zara.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    "assest/images/blackBackground.png",
                    height: size.height / 8,
                    width: size.width / 2.2,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 13),
                    child: Center(
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

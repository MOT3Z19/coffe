// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/store_product.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/StorePage/page/store_product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'favourite_delegations.dart';
import 'favourite_product.dart';

class FavouriteStore extends StatefulWidget {
  const FavouriteStore({Key? key}) : super(key: key);

  @override
  State<FavouriteStore> createState() => _FavouriteStoreState();
}

class _FavouriteStoreState extends State<FavouriteStore> {
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              const Icon(
                                // added by vp
                                Icons.search,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(
                                width: size.width / 5,
                              ),
                            ],
                          ),
                          const Text(
                            "مفضلتي ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: size.width / 4,
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavouriteDelegations(),
                        ),
                      );
                    },
                    child: const Text(
                      "المندوبين ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavouriteStore(),
                        ),
                      );
                    },
                    child: Text(
                      "محلاتي ",
                      style: TextStyle(
                        fontSize: 18,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavouriteProduct(),
                        ),
                      );
                    },
                    child: const Text(
                      "منتجاتي ",
                      style: TextStyle(
                        fontSize: 18,

                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StoreProducts(),
          ),
        );
        // need
      },
      child: Container(
        width: size.width / 1.1,
        height: size.height / 5,
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
            // const SizedBox(
            //   width: 15,
            // ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        //  margin: EdgeInsets.only(right: 130),
                        child: const Icon(Icons.cancel_outlined)),
                    SizedBox(
                      width: size.width / 3,
                    ),
                    Container(
                      // margin: EdgeInsets.only(right: 130),
                      child: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: size.width / 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const SizedBox(
                      //   width: 15,
                      // ),
                      const Text(
                        "متجر زارا",
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        "فرع الكورنيش 0110",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "الكويت",
                            style: TextStyle(fontSize: 20),
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
                ),
              ],
            ),
            Container(
              width: size.width / 2.2,
              height: size.height / 7,
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
                    height: size.height / 7,
                    width: size.width / 2.2,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 11),
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

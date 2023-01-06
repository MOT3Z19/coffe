import 'package:coffee_station/UserTypes/User/screen/Favourite/page/favourite_product.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'full_card.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
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
        body: Column(
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
                        InkWell(
                          onTap: () {
                            // Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          child: const Icon(
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
                            " سلتي",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
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
              height: 60,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FullCard(),
                    ),
                  );
                },
                child: Image.asset("assest/images/emptyCart.png")),
            SizedBox(
              height: size.height / 12,
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
              child: Container(
                width: size.width / 1.1,
                height: size.height / 15,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 30, vertical: size.height / 100),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "أضف من قائمة مفضلاتي",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Container(
                width: size.width / 1.1,
                height: size.height / 15,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 30, vertical: size.height / 140),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "الاستمرار بالتسوق",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

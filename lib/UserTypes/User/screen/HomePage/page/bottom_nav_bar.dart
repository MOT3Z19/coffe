import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/my_account.dart';
import 'package:coffee_station/UserTypes/User/screen/Cart/page/empty_cart.dart';
import 'package:coffee_station/UserTypes/User/screen/Favourite/page/favourite_product.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/notification.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class BottomNAvigationBar extends StatefulWidget {
  const BottomNAvigationBar({Key? key}) : super(key: key);

  @override
  State<BottomNAvigationBar> createState() => _BottomNAvigationBarState();
}

class _BottomNAvigationBarState extends State<BottomNAvigationBar> {
  @override
  Widget build(BuildContext context) {
    int activePage = 4;
    final List<Widget> _tabItems = [
      MyAccount(),
      Notification1(),
      FavouriteProduct(),
      EmptyCart(),
      HomePage(),
      // Here must add your pages which will appear after clicking on bottom navigation bar
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        // height: 70,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        // padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            currentIndex: activePage,
            selectedItemColor: secondaryColor,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                activePage = index;
              });
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  //  color: Colors.grey,
                  //   size: 20,
                ),
                label: 'حسابي',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  //  color: Colors.grey,
                ),
                label: 'اشعاراتي',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  //  color: Colors.grey,
                ),
                label: 'مفضلتي',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  //  color: Colors.grey,
                ),
                label: 'سلتي',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  //  color: Colors.grey,
                ),
                label: 'الرئيسة',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

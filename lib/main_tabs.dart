// import 'package:coffee_station/core/constant.dart';
// import 'package:flutter/material.dart';
//
// import 'UserTypes/ServiceProvider/Screen/MyAccount/page/my_account.dart';
// import 'UserTypes/User/screen/Cart/page/empty_cart.dart';
// import 'UserTypes/User/screen/Favourite/page/favourite_product.dart';
// import 'UserTypes/User/screen/HomePage/page/home_page.dart';
// import 'UserTypes/User/screen/catergories/page/notification.dart';
//
// class MainTabs extends StatefulWidget {
//   const MainTabs({Key? key}) : super(key: key);
//
//   @override
//   _MainTabsState createState() => _MainTabsState();
// }
//
// class _MainTabsState extends State<MainTabs> {
//   int activePage = 4;
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> _tabItems = [
//       MyAccount(),
//       Notification1(),
//       FavouriteProduct(),
//       EmptyCart(),
//       HomePage(),
//       // Here must add your pages which will appear after clicking on bottom navigation bar
//     ];
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: _tabItems[activePage],
//       bottomNavigationBar: Container(
//         // height: 70,
//         margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(50)),
//           boxShadow: [
//             BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
//           ],
//         ),
//         // padding: const EdgeInsets.all(8.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(50),
//           child: BottomNavigationBar(
//             currentIndex: activePage,
//             selectedItemColor: secondaryColor,
//             unselectedItemColor: Colors.grey,
//             onTap: (index) {
//               setState(() {
//                 activePage = index;
//               });
//             },
//             items: <BottomNavigationBarItem>[
//               const BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.person,
//                   //  color: Colors.grey,
//                   //   size: 20,
//                 ),
//                 label: 'حسابي',
//               ),
//               const BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.notifications,
//                   //  color: Colors.grey,
//                 ),
//                 label: 'اشعاراتي',
//               ),
//               const BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.favorite_border,
//                   //  color: Colors.grey,
//                 ),
//                 label: 'مفضلتي',
//               ),
//               const BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.shopping_cart,
//                   //  color: Colors.grey,
//                 ),
//                 label: 'سلتي',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.home,
//                   //  color: Colors.grey,
//                 ),
//                 label: 'الرئيسة',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// import 'UserTypes/ServiceProvider/Screen/MyAccount/page/my_account.dart';
import 'UserTypes/User/screen/Cart/page/empty_cart.dart';
import 'UserTypes/User/screen/Favourite/page/favourite_product.dart';
import 'UserTypes/User/screen/HomePage/page/home_page.dart';
// import 'UserTypes/User/screen/MyAccount/page/my_profile.dart';
import 'UserTypes/User/screen/MyAccount/page/my_account.dart';
import 'UserTypes/User/screen/catergories/page/message.dart';
import 'UserTypes/User/screen/catergories/page/notification.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({Key? key}) : super(key: key);

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 5);

    List<Widget> _sellerScreens() {
      return [
        MyAccount(),
        Notification1(),
        FavouriteProduct(),
        Message(),
        EmptyCart(),
        HomePage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.person,
          ),
          title: "حسابي",
          textStyle: TextStyle(color: Colors.white),
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.notifications,
          ),
          title: "اشعاراتي",
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
          onSelectedTabPressWhenNoScreensPushed: () {},
        ),
        PersistentBottomNavBarItem(
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
          icon: const Icon(
            Icons.favorite_border,
          ),
          title: "مفضلتي",
        ),
        PersistentBottomNavBarItem(
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
          icon: const Icon(
            Icons.chat,
          ),
          title: "محادثاتي",
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.shopping_cart,
          ),
          title: "سلتي ",
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home,
          ),
          title: "الرئيسة",
          textStyle: TextStyle(color: Colors.white),
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return Container(
      // color: Colors.red,
      // margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(10),
        child: PersistentTabView(
          context,
          controller: _controller,
          // backgroundColor: Color(0xffe1e9ee),
          backgroundColor: Colors.white,

          screens: _sellerScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,

          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true,
          // Default is true.
          hideNavigationBarWhenKeyboardShows: true,
          // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            // animateTabTransition: true,
            curve: Curves.bounceOut,
            duration: Duration(milliseconds: 100),
          ),
          navBarStyle: NavBarStyle.style7,
        ),
      ),
    );
  }
}

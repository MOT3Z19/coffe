import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'Chat/page/message.dart';
import 'Orders/page/orderr1.dart';
import 'Profile/page/delivery_wallet.dart';
import 'Profile/page/my_profile.dart';
import 'notification.dart';

class DelvieryMainTabs extends StatefulWidget {
  const DelvieryMainTabs({Key? key}) : super(key: key);

  @override
  _DelvieryMainTabsState createState() => _DelvieryMainTabsState();
}

class _DelvieryMainTabsState extends State<DelvieryMainTabs> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 4);
    List<Widget> _tabScreen() {
      return [
        DeliveryProfile(),
        DeliveryNotification(),
        DeliveryMessage(),
        // MyProducts(),
        //Orders(),
        DeliveryWallet(),
        Order1(), ////
        // Here must add your pages which will appear after clicking on bottom navigation bar
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
            Icons.chat,
          ),
          title: "محادثاتي",
        ),
        // PersistentBottomNavBarItem(
        //   icon: const Icon(
        //     Icons.production_quantity_limits_rounded,
        //   ),
        //   title: "منتجاتي",
        //   activeColorPrimary: primaryColor,
        //   activeColorSecondary: Colors.white,
        //   inactiveColorPrimary: Colors.grey,
        //   onSelectedTabPressWhenNoScreensPushed: () {},
        // ),
        // PersistentBottomNavBarItem(
        //   activeColorPrimary: primaryColor,
        //   activeColorSecondary: Colors.white,
        //   inactiveColorPrimary: Colors.grey,
        //   icon: const Icon(
        //     Icons.inbox_sharp,
        //   ),
        //   title: "طلباتي",
        // ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.account_balance_wallet_rounded,
          ),
          title: "محفظتي ",
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

          screens: _tabScreen(),
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

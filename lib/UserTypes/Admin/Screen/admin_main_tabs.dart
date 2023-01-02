import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../Delivery/Screen/Chat/page/message.dart';
import 'HomePage/admin_home_page.dart';
import 'Order/delegation_order.dart';
import 'admin_profile.dart';
import 'admin_wallet.dart';

class AdminMainTabs extends StatefulWidget {
  const AdminMainTabs({Key? key}) : super(key: key);

  @override
  _AdminMainTabsState createState() => _AdminMainTabsState();
}

class _AdminMainTabsState extends State<AdminMainTabs> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 4);
    List<Widget> _tabScreen() {
      return [
        const AdminProfile(),
        const DelegationOrder(),
        const DeliveryMessage(),
        const AdminWallet(),
        const AdminHomePage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.person,
          ),
          title: "حسابي",
          textStyle: const TextStyle(color: Colors.white),
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
          icon: const Icon(
            Icons.inbox_sharp,
          ),
          title: "طلباتي",
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
          textStyle: const TextStyle(color: Colors.white),
          activeColorPrimary: primaryColor,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        child: PersistentTabView(
          context,
          controller: _controller,
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
            curve: Curves.bounceOut,
            duration: Duration(milliseconds: 100),
          ),
          navBarStyle: NavBarStyle.style7,
        ),
      ),
    );
  }
}

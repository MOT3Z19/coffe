import 'package:coffee_station/UserTypes/Admin/Screen/delegation-page.dart';
import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/order_detials2.dart';
// import 'package:coffee_station/UserTypes/User/screen/catergories/page/delegation_page.dart';
import 'package:flutter/material.dart';

import 'Screen/Bunch/admin_bunch.dart';
import 'Screen/HomePage/admin_home_page.dart';
import 'Screen/Order/delegation_order.dart';
import 'Screen/Statistisc/admin_statistics1.dart';
import 'Screen/Statistisc/admin_statistisc2.dart';
import 'Screen/Statistisc/admin_statistisc3.dart';
import 'Screen/Statistisc/delivery_statistisc4.dart';
import 'Screen/admin_account_info.dart';
import 'Screen/admin_login.dart';
import 'Screen/admin_main_tabs.dart';
import 'Screen/admin_profile.dart';
import 'Screen/admin_sign_up.dart';
import 'Screen/admin_wallet.dart';
import 'Screen/client_details.dart';
import 'Screen/clients.dart';
import 'Screen/complintas.dart';
import 'Screen/controls.dart';
import 'Screen/delegation_details.dart';
import 'Screen/requests.dart';
import 'Screen/serivce_provider_page.dart';
import 'Screen/service_provider_details.dart';
import 'Screen/supervisor_details.dart';

class AdminUI extends StatefulWidget {
  const AdminUI({Key? key}) : super(key: key);

  @override
  _AdminUIState createState() => _AdminUIState();
}

class _AdminUIState extends State<AdminUI> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MaterialApp(
      home: PageView(
        controller: controller,
        children: const [
          AdminSignUp(),
          AdminLoginScreen(),
          AdminMainTabs(),
          AdminProfile(),
          AdminAccountInfo(),

          Controls(),
          AdminHomePage(),

          AdminStatistics1(),
          AdminStatistics2(),
          AdminStatistics3(),
          AdminStatistics4(),
          AdminWallet(),
          //   ClientRating(),
          ServiceProviderPage(),
          ServiceProviderDetails(),

          DelegationPagee(),
          DelegationDetails(),

          ClientDetailss(),
          SupervisorDetails(),

          AddRequests(),

          Clients(),

          DelegationOrder(),
          OrderDetails2(),

          AdminBunchScreen(),

          Complaints(),
        ],
      ),
    );
  }
}

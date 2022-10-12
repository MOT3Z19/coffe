import 'package:flutter/material.dart';

import 'Screen/Branch/page/add_new_branch.dart';
import 'Screen/Branch/page/add_product_to_branch.dart';
import 'Screen/Bunch/bunch.dart';
import 'Screen/Categories/service_provider_delegations_screen.dart';
import 'Screen/Categories/service_provider_delegations_screen2.dart';
import 'Screen/Categories/service_provider_delegations_screen3.dart';
import 'Screen/Categories/sp_sweet_page.dart';
import 'Screen/Categories/statistics.dart';
import 'Screen/Categories/statistics2.dart';
import 'Screen/Categories/statistics3.dart';
import 'Screen/MyAccount/page/my_account.dart';
import 'Screen/MyAccount/page/service_provider_change_password.dart';
import 'Screen/MyAccount/page/service_provider_profile.dart';
import 'Screen/MyAccount/page/sp_about_us.dart';
import 'Screen/MyAccount/page/sp_app_setting.dart';
import 'Screen/MyAccount/page/sp_contact_us.dart';
import 'Screen/MyAccount/page/sp_notification.dart';
import 'Screen/MyAccount/page/sp_notification2.dart';
import 'Screen/MyAccount/page/wallet.dart';
import 'Screen/StorePage/page/add_product.dart';
import 'Screen/StorePage/page/store_page.dart';
import 'Screen/StorePage/page/store_product.dart';
import 'Screen/StorePage/page/store_product2.dart';
import 'Screen/StorePage/store_screen.dart';
import 'Screen/Users/page/service_provider_add_user1.dart';
import 'Screen/Users/page/service_provider_add_user2.dart';
import 'Screen/payment/page/payment1.dart';
import 'Screen/product/my_product.dart';
import 'Screen/product/orders.dart';
import 'Screen/product/sp_product_page.dart';
import 'Screen/product/sp_product_page2.dart';
import 'Screen/s_p_main_tabs.dart';
import 'Screen/sign_up/sign_up.dart';

class ServiceProviderUI extends StatefulWidget {
  const ServiceProviderUI({Key? key}) : super(key: key);

  @override
  _ServiceProviderUIState createState() => _ServiceProviderUIState();
}

class _ServiceProviderUIState extends State<ServiceProviderUI> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MaterialApp(
      home: PageView(
        controller: controller,
        children: const [
          ProviderSignUp(), // done res
          BunchScreen(), // done res
          ServiceProviderMainTabs(), // done res
          AddNewBranch(), // done res
          AddProductToBranch(), // done res
          ServiceProviderSweetPage(), // done res
          ServiceProviderStoreScreen(), // done res الافرع
          ServiceProviderStorePage(), // done res // need it // without
          StoreProducts(), // done res // 1 +
          StoreProducts2(), // done  // 2  same page (interface) with different body
          AddProducts(), // done res
// ////
          ServiceProviderProductPage(), // done  // 1 +//  product page // without
          ServiceProviderProductPage2(), // done  // 2  same page (interface) with different body
// /////
          MyProducts(), // done res

          Orders(), // done res
          ServiceProviderPayment1(), // done res
          //
          ServiceProviderDelegationsScreen(), // done // 1 +
          ServiceProviderDelegationsScreen2(), // 2  same page (interface) with different body , without
          //
          ServiceProviderDelegationsScreen3(), // done
          ServiceProviderAddUser1(), // done res
          ServiceProviderAddUser2(),
          MyAccount(),
          ServiceProviderProfile(), // done
          ServiceProviderChangePassword(), // done
          ServiceProviderNotification(),
          ServiceProviderNotification2(),
          Wallet(),
          ServiceProviderAboutUS(), //// done res
          ServiceProviderContactUs(),
          ServiceProviderAppSettings(),
          Statistics(),
          Statistics2(),
          Statistics3(),
        ],
      ),
    );
  }
}

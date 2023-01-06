import 'package:coffee_station/UserTypes/User/screen/Cart/page/empty_cart.dart';
import 'package:coffee_station/UserTypes/User/screen/Cart/page/full_card.dart';
import 'package:coffee_station/UserTypes/User/screen/Cart/payment.dart';
import 'package:coffee_station/UserTypes/User/screen/Cart/payment3.dart';
import 'package:coffee_station/UserTypes/User/screen/Chat/page/chat_details_page.dart';
import 'package:coffee_station/UserTypes/User/screen/Favourite/page/favourite_delegations.dart';
import 'package:coffee_station/UserTypes/User/screen/Favourite/page/favourite_product.dart';
import 'package:coffee_station/UserTypes/User/screen/Favourite/page/favourite_store.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/delegation_map.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/google_map.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/home_google_map.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/payment_map.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/payment_map5.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/about_us.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/app_settings.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/cards.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/change_password.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/contact_us.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/my_account.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/my_profile.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/personal_inforamtion.dart';
import 'package:coffee_station/UserTypes/User/screen/MyOrders/page/current_order.dart';
import 'package:coffee_station/UserTypes/User/screen/MyOrders/page/order_details.dart';
import 'package:coffee_station/UserTypes/User/screen/MyOrders/page/order_rating.dart';
import 'package:coffee_station/UserTypes/User/screen/OnBoardingScreen/page/on_boarding_screen.dart';
import 'package:coffee_station/UserTypes/User/screen/ProductPage/page/product_page.dart';
import 'package:coffee_station/UserTypes/User/screen/SignUp/page/sign_up.dart';
import 'package:coffee_station/UserTypes/User/screen/StorePage/page/store_page.dart';
import 'package:coffee_station/UserTypes/User/screen/StorePage/page/store_product.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/delegation_page.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/delegations_list.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/delegations_offer_screen.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/delegations_offer_screen2.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/discount.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/message.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/notification.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/stores.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/three_product.dart';
import 'package:coffee_station/UserTypes/User/screen/loginScreen/page/login_screen.dart';
import 'package:coffee_station/UserTypes/User/screen/splash_screen.dart';
import 'package:coffee_station/UserTypes/User/screen/sweet_screen.dart';
import 'package:flutter/material.dart';

import '../../main_tabs.dart';

class UserInterfaces extends StatefulWidget {
  const UserInterfaces({Key? key}) : super(key: key);

  @override
  _UserInterfacesState createState() => _UserInterfacesState();
}

class _UserInterfacesState extends State<UserInterfaces> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MaterialApp(
      home: PageView(
        // this widget to make pages swiable , it must be remove in second step (Back)
        controller: controller,
        children: const [
          SplashScreen(), //Done Res.
          OnBoardingScreen(), // done res.
          LoginScreen(), // done res.
          SignUp(), // done res.
          GoogleMap(), // done res
          // MainTabs(), // home page done res.
          MainTabs(),
          SweetPage(), // done res
          StoreProducts(), // done res
          StoreScreen(), // done res
          HomeGoogleMap(), //done res
          ProductPage(), // done res.
          //
          ProductsScreen(), //use it , done res
          //   delegationsScreen(),
          DiscountScreen(), // use it , done res
          ThreeProductsScreen(), // done res
          StorePage(), // 1 +
          FavouriteProduct(), // 2 +
          FavouriteStore(), // 3 same page so need back to make response for it
          FavouriteDelegations(), /////////
          EmptyCart(), // 1 +
          FullCard(), // 2     // same thing here
          Payment(),
          PaymentMap(),
          // PaymentMap2(), // need bottom sheet
          Payement3(),
          // Payment4(),
          // PaymentMap3(), // for here in putting the back arrow
          // PaymentMap4(),
          delegationsOfferScreen(), // 1 +
          delegationsOfferScreen2(), //2 +
          delegationsMap(), // 3 +
          delegationsList(), // 4 same thing
          //
          Notification1(),
          PaymentMap5(),
          DelegationPage(), //
          Message(), // done
          ChatDetailsPage(), // done
          //
          CurrentOrders(), // 1 +
          OrderDetails(), // 2 +
          // OrderDetails2(), //3 same thing
          OrderRating(),
          //
          MyAccount(), // done res
          MyProfile(), // done res
          PersonalInforamtion(), // done res
          ChangePassword(), // done res
          Cards(), // done res
          //
          AppSettings(), // done res
          AboutUS(), //// done res
          ContactUs(), // done res
        ],
      ),
    );
  }
}

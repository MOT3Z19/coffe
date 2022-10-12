import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/change_password.dart';
import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/my_profile.dart';
import 'package:flutter/material.dart';

import 'Screen/Bunch/bunch.dart';
import 'Screen/Chat/page/chat_details.dart';
import 'Screen/Chat/page/message.dart';
import 'Screen/GoogleMap/page/google_map1.dart';
import 'Screen/GoogleMap/page/google_map2.dart';
import 'Screen/Orders/page/current_order.dart';
import 'Screen/Orders/page/order2.dart';
import 'Screen/Orders/page/order3.dart';
import 'Screen/Orders/page/order4.dart';
import 'Screen/Orders/page/order_details.dart';
import 'Screen/Orders/page/order_detials2.dart';
import 'Screen/Orders/page/orderr1.dart';
import 'Screen/Profile/page/delivery_personal_information.dart';
import 'Screen/Profile/page/delivery_wallet.dart';
import 'Screen/Profile/page/my_profile.dart';
import 'Screen/SignUp/page/sign_up.dart';
import 'Screen/client/page/client_details.dart';
import 'Screen/client/page/client_rating.dart';
import 'Screen/main_tabs.dart';
import 'Screen/notification.dart';
import 'Screen/offer/page/offer_details.dart';
import 'Screen/statistics/page/delivery_statistics.dart';
import 'Screen/statistics/page/delivery_statistics2.dart';
import 'Screen/statistics/page/delivery_statistics3.dart';

class DeliveryUI extends StatefulWidget {
  const DeliveryUI({Key? key}) : super(key: key);

  @override
  _DeliveryUIState createState() => _DeliveryUIState();
}

class _DeliveryUIState extends State<DeliveryUI> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MaterialApp(
      home: PageView(
        controller: controller,
        children: const [
          DeliverySignUp(), // done res
          BunchScreen(), // done res
          DelvieryMainTabs(),
          Order1(), // 1 +
          Order2(), // 2 +
          Order4(), // +3 same page with different body, so need back
          Order3(), // there is no place to show this page
          OrderDetails(),
          GoogleMap1(), // done
          OfferDetails(), // done
          ClientDetails(), // done
          DeliveryMessage(), // done
          DeliveryChatDetailsPage(), // done
          CurrentOrder(), // done res
          OrderDetails2(), // done res
          //////////////////
          DeliveryNotification(),
          GoogleMap2(),
          ClientRating(),
          DeliveryProfile(),
          MyProfile(),
          DeliveryPersonalInforamtion(),
          ChangePassword(),
          DeliveryWallet(),
          DeliveryStatistics(),
          DeliveryStatistics2(),
          DeliveryStatistics3(),
        ],
      ),
    );
  }
}

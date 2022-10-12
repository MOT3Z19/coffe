// import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/change_password.dart';
// import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/personal_inforamtion.dart';
import 'package:flutter/material.dart';

import '../../../../Delivery/Screen/Profile/page/delivery_personal_information.dart';
import '../page/change_password.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryPersonalInforamtion(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text(
                  "تعديل البيانات الشخصية",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePassword(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text(
                  "تعديل كلمة السر",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:coffee_station/UserTypes/Delivery/Screen/Profile/page/delivery_about_us.dart';
import 'package:coffee_station/UserTypes/Delivery/Screen/statistics/page/delivery_statistics.dart';
import 'package:flutter/material.dart';

import '../../../../ServiceProvider/Screen/Bunch/bunch.dart';
import 'delivery_account.dart';
import 'delivery_contact_us.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryAccount(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width / 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                // SizedBox(
                //   width: 30,
                // ),
                Text(
                  "حسابي",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryStatistics(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width / 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text(
                  "الاحصائيات",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryAboutUS(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width / 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text(
                  "من نحن",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryContactUs(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width / 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text(
                  "اتصل بنا",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 9,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.arrow_back_ios),
              Text(
                " تغيير اللغة",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BunchScreen(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width / 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  " تعديل باقاتي",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 9,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Text(
                "البطاقات البنكية",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const DeliveryAppSettings(),
            //   ),
            // );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width / 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  "تقييماتي",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 9,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Text(
                "  الشكوى و الاقتراحات",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

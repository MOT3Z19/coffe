import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/google_map.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width,
          height: size.height / 13, // last change
          margin: EdgeInsets.symmetric(horizontal: size.width / 20),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: "الاسم كامل ( لن يظهر للجميع)",
              labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height / 13,
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 20,
          ),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: " اسم المستخدم ",
              labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height / 13,
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 20,
          ),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: "  كلمة المرور (لن يظهر للجميع)",
              labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height / 13,
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 20,
          ),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: " تآكيد كلمة المرور",
              labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height / 13,
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 20,
          ),
          child: TextField(
            decoration: InputDecoration(
              suffix: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GoogleMap(),
                      ),
                    );
                  },
                  child: const Icon(Icons.location_on_rounded)),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: " الموقع ",
              labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height / 13,
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 20,
          ),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: " الايميل ( لن يظهر للجميع)",
              labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height / 13,
          margin: EdgeInsets.symmetric(
            horizontal: size.width / 20,
          ),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              labelText: " رقم الهاتف  ( اختياري)",
              labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

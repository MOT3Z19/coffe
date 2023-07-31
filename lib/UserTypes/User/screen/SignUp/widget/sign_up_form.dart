import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/google_map.dart';
import 'package:coffee_station/controller/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
   SignUpForm({Key? key}) : super(key: key);

  final SignupController _signupController = Get.put(SignupController());

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
  TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

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
          child: TextField(
            controller: _fullNameController,
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
          child:  TextField(
            controller: _usernameController,
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
          child: TextField(
            controller: _passwordController,
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
          child: TextField(
            controller: _passwordConfirmationController,
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
            controller: _locationController,
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
          child: TextField(
            controller: _emailController,
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
          child: TextField(
            controller: _phoneNumberController,
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

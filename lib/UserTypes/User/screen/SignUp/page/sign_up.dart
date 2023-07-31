import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/google_map.dart';
import 'package:coffee_station/UserTypes/User/screen/SignUp/widget/sign_up_form.dart';
import 'package:coffee_station/UserTypes/User/screen/loginScreen/page/login_screen.dart';
import 'package:coffee_station/controller/userController.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:coffee_station/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
final SignupController _signupController = Get.put(SignupController());

final TextEditingController _fullNameController = TextEditingController();
final TextEditingController _usernameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _passwordConfirmationController =
TextEditingController();
final TextEditingController _locationController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneNumberController = TextEditingController();

class _SignUpState extends State<SignUp> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height / 9),
                    height: size.height,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: size.width,
                              height: size.height / 13,
                              margin: EdgeInsets.only(top: size.height / 14),
                              child: const Center(
                                child: Text(
                                  " انشاء حساب جديد",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Column(
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
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: _signupController.isLoading.value
                                  ? null
                                  : () {
                                if (_passwordController.text ==
                                    _passwordConfirmationController.text) {
                                  UserModel user = UserModel(
                                    fullName: _fullNameController.text,
                                    username: _usernameController.text,
                                    password: _passwordController.text,
                                    location: _locationController.text,
                                    email: _emailController.text,
                                    phoneNumber: _phoneNumberController.text,
                                  );
                                  _signupController.signUp(user);
                                } else {
                                  Get.snackbar('Error', 'Passwords do not match');
                                }
                              },
                              child: _signupController.isLoading.value
                                  ? CircularProgressIndicator()
                                  : Text('Signup'),
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: size.width / 2.3,
                                  height: size.height / 19,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Center(
                                        child: Text(
                                          "Facebook",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Icon(
                                        Icons.facebook_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: size.width / 2.3,
                                  height: size.height / 19,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Center(
                                        child: Text(
                                          "Google",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Image.asset(
                                        "assest/images/google.png",
                                        width: 30,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 140,
                    right: 140,
                    child: Center(
                      child: Image.asset("assest/images/logo.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "التحقق",
              style: TextStyle(fontSize: 25),
            )),
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "نرحب بك عضوا جديدا  .. لقد طلبت التسجيل في موقع كوفيستشين ..نرجو ادخال الكود المرسل الى ايمالك/جوالك",
                  style: TextStyle(color: greyColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 7,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      "    انقر هنا ",
                      style: TextStyle(fontSize: 17, color: secondaryColor),
                    ),
                    Text(
                      " لم تستلم ؟ ",
                      style: TextStyle(fontSize: 17, color: greyColor),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "تم تسجيل عن طريق جوجل",
              style: TextStyle(fontSize: 25),
            )),
            actions: <Widget>[
              const Center(
                child: Text(
                  " الرجاء إدخال رقم الهاتف الخاص ",
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: " رقم الهاتف ",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (valuee) {
                      setState(() {
                        value = valuee!;
                      });
                    },
                  ),
                  const Text(
                    "لا ارغب في اضافة رقم هاتف",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

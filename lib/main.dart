import 'package:coffee_station/controller/userController.dart';
import 'package:coffee_station/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UserTypes/demo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(SignupController());
  runApp(
      GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: DemoScreen()));
  // runApp(MaterialApp(home: SplashScreen()));
  // runApp(MaterialApp(home: UserInterfaces()));
  // runApp(MaterialApp(home: ProviderSignUp()));
  // runApp(MaterialApp(home: DeliverySignUp()));
  // runApp(MaterialApp(home: AdminMainTabs()));

}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce_pesa/helper/binding.dart';
import 'package:getx_ecommerce_pesa/view/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: Binding(),
        home: SafeArea(
          child: Scaffold(
            body: LoginScreen(),
          ),
        ),
      ),
    );
  }
}

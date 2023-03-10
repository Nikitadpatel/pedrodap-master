import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pedrodap/provider/authprovider.dart';
import 'package:pedrodap/screens/profile/loginpage.dart';
import 'package:pedrodap/splashScreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'loader.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => authprovider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: splashscreen2(),
          builder: EasyLoading.init(),
        ),
      );
    });
  }
}

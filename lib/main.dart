
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instaseries/Screens/bottomnavscreen/bottomnav.dart';
import 'package:instaseries/Screens/splash/spalashscreen.dart';
import 'package:instaseries/firebase_options.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',

      theme: ThemeData.dark(),
      home: Spalashscreen(),
    );
  }
}

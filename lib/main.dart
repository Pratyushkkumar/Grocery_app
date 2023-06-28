import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/G_category.dart';
import 'package:grocery_app/Pages/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery_app/Pages/Register.dart';
import 'package:grocery_app/model.dart/cart.dart';
import 'package:grocery_app/tools/bottom_navigation.dart';
import 'package:grocery_app/tools/state.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Cart(),builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainscreen(),
    ),);
  }
}

import 'package:chat2/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
     GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'profile',
      routes: app_routes,
    ),
  );
}

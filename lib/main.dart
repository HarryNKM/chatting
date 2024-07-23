import 'package:chat2/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  );
}

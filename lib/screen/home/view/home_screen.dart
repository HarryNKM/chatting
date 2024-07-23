import 'package:chat2/utils/firebase_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          FirebaseHelper.helper.auth.signOut();
          Navigator.pushNamed(context, 'signin');
        },child: Text("Sign Out"),),
      ),
    );
  }
}

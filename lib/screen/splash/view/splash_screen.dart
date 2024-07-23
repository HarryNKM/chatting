
import 'package:chat2/utils/firebase_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      bool check=FirebaseHelper.helper.checkUser();
      if(check)
        {
          Navigator.pushReplacementNamed(context, 'home');
        }
      else
        {
          Navigator.pushReplacementNamed(context, 'signin');
        }
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("😂",style: TextStyle(fontSize: 60),),
      ),
    );
  }
}

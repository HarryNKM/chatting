import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/img/firstpage.png",height: 400,),
              Image.asset("assets/img/conncect.png"),
              const SizedBox(height: 30,),
              const Text("Terms & Privacy Policy"),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'signin');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  width: 327,
                  decoration: BoxDecoration(
                    color: const Color(0xff002DE3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Start Messaging",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

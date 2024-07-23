import 'package:chat2/utils/firebase_helper.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController txtPass=TextEditingController();
  TextEditingController txtEmail=TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 250,
                    child: const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter Your SignIn Details",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Please Enter Correct Details.",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.7),
                      labelText: "Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if( !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!))
                      {
                        return "Please Enter Valid Email";
                      }
                      else if(value.isEmpty)
                      {
                        return "Please Enter Email";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtPass,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.7),
                      labelText: "Your Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please Enter The Password";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if(formkey.currentState!.validate())
                      {
                        FirebaseHelper.helper.signIn(txtEmail.text, txtPass.text);
                        Navigator.pushNamed(context, 'home');
                      }

                    },
                    child: Image.asset("assets/img/Button.png"),
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(onPressed: () {
                    FirebaseHelper.helper.signinGoogle();
                  }, child: Text("Google")),
                  const SizedBox(
                    height: 80,
                  ),
                  InkWell(
                    onTap: () {

                      Navigator.pushNamed(context, 'signup');
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't Have Account? ",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          TextSpan(
                            text: "Create New",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

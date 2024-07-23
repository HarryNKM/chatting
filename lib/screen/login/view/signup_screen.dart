import 'package:chat2/utils/firebase_helper.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPass=TextEditingController();
  TextEditingController txtName=TextEditingController();
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
                    child:  const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter Your SignUp Details",
                            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20,),
                          Text("Please Enter Correct Details.",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.7),
                      labelText: "Your Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    controller: txtName,
                    validator:  (value) {
                      if(value!.isEmpty)
                        {
                          return "Please Enter Your Name";
                        }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
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
                    controller: txtEmail,
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
                    controller: txtPass,
                    validator: (value) {
                      if(value!.isEmpty)
                        {
                          return "Please Enter The Password";
                        }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  InkWell(
                    onTap: () {
                      if(formkey.currentState!.validate())
                        {
                          FirebaseHelper.helper.signUp(txtEmail.text,txtPass.text);
                          Navigator.pushNamed(context, 'signin');
                        }
                    },
                    child: Image.asset("assets/img/Button.png"),
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

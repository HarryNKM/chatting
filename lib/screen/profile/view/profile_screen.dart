import 'package:chat2/screen/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPhone=TextEditingController();
  TextEditingController txtName=TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  ProfileController controller=ProfileController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade700,
                radius: 50,
                child: const Icon(Icons.person, size: 50, color: Colors.black,),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtName,
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
              ),
              const SizedBox(
                height: 20,
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
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtPhone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300.withOpacity(0.7),
                  labelText: "Your Mobile",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(onTap: () {
                if(formKey.currentState!.validate())
                  {
                  }
                Get.toNamed('home');
              }, child: Image.asset("assets/img/Button.png"),),
            ],
          ),
        ),
      ),
    );
  }
}

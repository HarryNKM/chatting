import 'package:chat2/utils/firebase_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue.shade700,
          centerTitle: true,
          title: const Text(
            "Chat App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue.shade700,
        ),
        drawer:  Drawer(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  leading: Text("Sign Out",style: TextStyle(fontSize: 15),),
                  trailing: Icon(Icons.logout),
                  onTap: () {
                    FirebaseHelper.helper.signOut();
                    Get.toNamed('signin');
                  },
                )
              ],
            ),
          ),
        ),
        body: const Column());
  }
}

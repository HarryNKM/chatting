import 'package:chat2/screen/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  ProfileController controller = ProfileController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
        title: const Text(
          "All Users",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'chat');
                },
                leading: CircleAvatar(),
                title: Text("Harry"),
                subtitle: Text("9173719691"),
              ),
            ],
          );
        },
      ),
    );
  }
}

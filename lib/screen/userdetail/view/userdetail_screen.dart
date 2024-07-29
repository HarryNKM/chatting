import 'package:flutter/material.dart';

class UserdetailScreen extends StatefulWidget {
  const UserdetailScreen({super.key});

  @override
  State<UserdetailScreen> createState() => _UserdetailScreenState();
}

class _UserdetailScreenState extends State<UserdetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
        title: const Text(
          "Contact Info",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Edit",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Harry",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const Text("+91 9173719691",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blue.shade700)),
                      child: const Icon(
                        Icons.chat_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blue.shade700)),
                      child: const Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blue.shade700)),
                      child: const Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blue.shade700)),
                      child: const Icon(
                        Icons.block,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(12),
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const Text(
                      "success in life is always achieved with true karma.",
                      style: TextStyle(fontSize: 18,),
                    ),
                    Text(
                      "16 Jun 2023",
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 600,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.perm_media_sharp),
                      title: Text("Media, Links adnd docs"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

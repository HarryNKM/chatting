import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade700,
        title: const Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 15,
            ),
            Text(
              "Harry",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Today",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  width: MediaQuery.sizeOf(context).width,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(12),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      index % 2 == 0 ? "ha" : "hm",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 70,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Message",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_rounded,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

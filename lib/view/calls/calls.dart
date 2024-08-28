import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> calls = [
      {
        "name": "Aurelia",
        "message": "Today, 08.00pm",
        "profile": "assets/image/ss.webp",
        "call": "incoming"
      },
      {
        "name": "Rhea",
        "message": "Today, 09.00am",
        "profile": "assets/image/seven.webp",
        "call": "outgoing"
      },
      {
        "name": "Raran",
        "message": "Today, 06.00am",
        "profile": "assets/image/menth.webp",
        "call": "incoming"
      },
      {
        "name": "Jack",
        "message": "Today, 05:30am",
        "profile": "assets/image/meno.webp",
        "call": "missed"
      },
      {
        "name": "Boss",
        "message": "August 27, 10.00pm",
        "profile": "assets/image/ment.webp",
        "call": "missed"
      },
      {
        "name": "Ava",
        "message": "August 27, 09.22pm",
        "profile": "assets/image/dd.jpeg",
        "call": "incoming"
      },
      {
        "name": "Emily",
        "message": "August 27, 05.45pm",
        "profile": "assets/image/four.webp",
        "call": "missed"
      },
      {
        "name": "Annnan",
        "message": "July 25, 12.45pm",
        "profile": "assets/image/shopf.webp",
        "call": "outgoing"
      },
      {
        "name": "Isabella",
        "message": "July 24, 10.00am",
        "profile": "assets/image/two.jpeg",
        "call": "incoming"
      },
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final item = calls[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item['profile'].toString()),
              radius: 30,
            ),
            title: Text(
              item['name'].toString(),
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              item['message'].toString(),
              style: TextStyle(fontSize: 15),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call_outlined,
                  size: 20,
                  color: Colors.grey,
                ),
                Text(
                  item['call'].toString(),
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

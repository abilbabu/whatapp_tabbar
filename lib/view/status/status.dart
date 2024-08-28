import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> status = [
      {
        "name": "Alina",
        "message": "Just Now..",
        "profile": "assets/image/shopten.jpeg",
      },
      {
        "name": "Anu",
        "message": "48 minutes ago...",
        "profile": "assets/image/shopei.jpeg",
      },
      {
        "name": "Aurelia",
        "message": "09.48pm",
        "profile": "assets/image/ss.webp"
      },
      {
        "name": "Rhea",
        "message": "09.30pm.",
        "profile": "assets/image/seven.webp"
      },
      {
        "name": "sucok",
        "message": "08.42pm",
        "profile": "assets/image/meno.webp"
      },
      {
        "name": "Isabella",
        "message": "07.38pm",
        "profile": "assets/image/two.jpeg"
      },
      {
        "name": "asrnt",
        "message": "12.58pm",
        "profile": "assets/image/one.jpeg"
      },
      {
        "name": "Gana",
        "message": "10.34am",
        "profile": "assets/image/getbg.webp"
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(8)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/image/six.jpeg"),
                        radius: 27,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Status",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Tap to add status update",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                final item = status[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(item['profile']!),
                    radius: 30,
                  ),
                  title: Text(
                    item['name']!,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    item['message']!,
                    style: TextStyle(fontSize: 15),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

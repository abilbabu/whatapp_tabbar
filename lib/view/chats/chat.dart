import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> info = [
      {
        "name": "Alina",
        "message": "Write Like You're Texting Your Friend. ..",
        "time": "10.00pm",
        "profile": "assets/image/shopten.jpeg",
        "count": "4"
      },
      {
        "name": "Anu",
        "message": "Use Emojis, But Not Too Much. ...",
        "time": "01.00pm",
        "profile": "assets/image/shopei.jpeg",
        "count": "1"
      },
      {
        "name": "Aurelia",
        "message": "Keep It Short. ...",
        "time": "08.00pm",
        "profile": "assets/image/ss.webp"
      },
      {
        "name": "Rhea",
        "message": "One Action per Message.",
        "time": "09.00am",
        "profile": "assets/image/seven.webp"
      },
      {
        "name": "Raran",
        "message": "Ones after long....",
        "time": "10.00am",
        "profile": "assets/image/menth.webp"
      },
      {
        "name": "Jack",
        "message": "End With a Question.",
        "time": "10.00pm",
        "profile": "assets/image/meno.webp"
      },
      {
        "name": "Boss",
        "message": "hello boss!..",
        "time": "10.00pm",
        "profile": "assets/image/ment.webp"
      },
      {
        "name": "Ava",
        "message": "Use Emojis, But Not Too Much. ...",
        "time": "11.00pm",
        "profile": "assets/image/dd.jpeg"
      },
      {
        "name": "Emily",
        "message": "Keep It Short. ...",
        "time": "07.00pm",
        "profile": "assets/image/four.webp"
      },
      {
        "name": "Annnan",
        "message": "One Action per Message.",
        "time": "09.00am",
        "profile": "assets/image/shopf.webp"
      },
      {
        "name": "Alex",
        "message": "Ones after long....",
        "time": "10.00am",
        "profile": "assets/image/shops.webp"
      },
      {
        "name": "Emily",
        "message": "End With a Question.",
        "time": "01.00pm",
        "profile": "assets/image/shopfo.webp"
      },
      {
        "name": "sucok",
        "message": "End With a Question.",
        "time": "04.00pm",
        "profile": "assets/image/meno.webp"
      },
      {
        "name": "Isabella",
        "message": "One Action per Message.",
        "time": "09.00am",
        "profile": "assets/image/two.jpeg"
      },
      {
        "name": "asrnt",
        "message": "Ones after long....",
        "time": "10.00am",
        "profile": "assets/image/one.jpeg"
      },
      {
        "name": "Gana",
        "message": "End With a Question.",
        "time": "01.00pm",
        "profile": "assets/image/getbg.webp"
      },
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          final item = info[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ListTile(
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
                  Text(
                    item['time'].toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  if (item.containsKey('count'))
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Text(
                        item['count'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

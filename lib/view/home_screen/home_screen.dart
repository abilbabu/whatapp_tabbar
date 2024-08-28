import 'package:flutter/material.dart';
import 'package:whatapp_tabbar/view/calls/calls.dart';
import 'package:whatapp_tabbar/view/chats/chat.dart';
import 'package:whatapp_tabbar/view/status/status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              width: 12,
            )
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
                child: Text(
              "CHATS",
              style: TextStyle(color: Colors.white),
            )),
            Tab(
                child: Text(
              "STATUS",
              style: TextStyle(color: Colors.white),
            )),
            Tab(
                child: Text(
              "CALLS",
              style: TextStyle(color: Colors.white),
            )),
          ]),
        ),
        body: SafeArea(
          child: TabBarView(children: [
            Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    "Camera",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Chatscreen(),
            StatusScreen(),
            CallsScreen(),
          ]),
        ),
      ),
    );
  }
}

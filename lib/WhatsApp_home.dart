import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_screen.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/community_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';
// import 'package:whatsapp_clone/pages/calls_screen.dart';
// import 'package:whatsapp_clone/pages/chat_screen.dart';
// import 'package:whatsapp_clone/pages/community_screen.dart';
// import 'package:whatsapp_clone/pages/status_screen.dart';
import 'main.dart';

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,

        child: Scaffold(
          appBar: AppBar(
              title: const Text("WhatsApp"),
              backgroundColor: const Color(0xff075E54),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.groups)),
                  Tab(text: "Chat"),
                  Tab(text: "Status"),
                  Tab(text: "Calls"),
                ],
              ),
              actions: const <Widget> [
                Icon(Icons.photo_camera),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.0),
                ),
                Icon(Icons.search),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                ),
                Icon(Icons.more_vert)
            ],
          ),
          body: const TabBarView(
            children: <Widget>[
              communityScreen(),
              chatScreen(),
              statusScreen(),
              callsScreen()
            ],
          ),
        ),
      ),
    );
  }
}

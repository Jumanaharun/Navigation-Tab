import 'package:flutter/material.dart';
import 'package:tabbar/camera.dart';
import 'package:tabbar/contacts.dart';
import 'package:tabbar/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.alarm),
          backgroundColor: Colors.teal,
          title: Text("Text", style: TextStyle(color: Colors.white)),
          bottom: TabBar(
              indicatorColor: Colors.redAccent,
              labelColor: Colors.pinkAccent,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  text: "Camera",
                ),
                Tab(
                  icon: Icon(
                    Icons.contacts_sharp,
                    color: Colors.white,
                  ),
                  text: "Contacts",
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  text: "Settings",
                )
              ]),
        ),
        body: TabBarView(children: [
          Camerapage(),
          ContactsPage(),
          SettingsPage(),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'camera.dart';
import 'call.dart';
import 'status.dart';
import 'chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //CONTROLLER FOR TAB BAR
  late TabController controller;
  //INDEX FOR TAB BAR
  int selectedIndex = 1;

  @override
  void initState() {
    controller = new TabController(
      length: 4,
      vsync: this,
      initialIndex: selectedIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(122),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 45, 54),
          title: Container(
            width: 100,
            child: Text("WhatsApp",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal)),
          ),
          actions: [
            Container(width: 71, height: 24, child: Icon(Icons.search)),
            Container(width: 39, height: 24, child: Icon(Icons.menu)),
          ],
          flexibleSpace: FlexibleSpaceBar(centerTitle: true),
          bottom: TabBar(
              indicatorColor: Colors.green,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
              labelColor: Colors.grey,
              isScrollable: false,
              controller: controller,
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                  controller.animateTo(index);
                });
              },
              tabs: [
                Container(
                  margin: EdgeInsets.all(0),
                  width: 50,
                  height: 51,
                  child: Center(
                      child: Icon(Icons.camera_alt_rounded,
                          color: Color.fromARGB(255, 159, 163, 166))),
                ),
                Container(
                  height: 51,
                  child: Center(
                    child: Text(
                      "CHATS",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 159, 163, 166)),
                    ),
                  ),
                ),
                Container(
                  height: 51,
                  child: Center(
                    child: Text(
                      "STATUS",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 159, 163, 166)),
                    ),
                  ),
                ),
                Container(
                  height: 51,
                  child: Center(
                    child: Text(
                      "CALLS",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 159, 163, 166)),
                    ),
                  ),
                ),
              ]),
        ),
      ),
      body: Container(
        color: Colors.transparent,
        child: TabBarView(
          controller: controller,
          children: [
            CameraPage(),
            ChatPage(),
            StatusPage(),
            CallPage(),
          ],
        ),
      ),
    );
  }
}

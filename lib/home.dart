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
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          width: 100,
          child: Text("WhatsApp"),
        ),
        actions: [Icon(Icons.settings), Icon(Icons.search)],
        flexibleSpace: FlexibleSpaceBar(centerTitle: true),
        bottom: TabBar(
            indicatorColor: Colors.amber,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
            labelColor: Colors.grey,
            isScrollable: true,
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
                // width: 30,
                height: 30,
                child: Icon(Icons.camera, color: Colors.white),
              ),
              Container(
                height: 30,
                child: Text(
                  "CHATS",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  "STATUS",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  "CALLS",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ]),
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

import 'package:flutter/material.dart';
import 'theme/theme.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(122),
        child: AppBar(
          backgroundColor: topTitleBar,
          title: Container(
            width: 100,
            child: Text(
              "WhatsApp",
              style: TextStyle(
                  color: topTitleIcon,
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto"),
            ),
          ),
          actions: [
            Container(
              width: 71,
              height: 24,
              child: Icon(Icons.search, color: topTitleIcon),
            ),
            Container(
              width: 39,
              height: 24,
              child: Icon(Icons.more_vert, color: topTitleIcon),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(centerTitle: true),
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 51),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                  indicatorColor: indicatorColor,
                  labelColor: indicatorColor,
                  isScrollable: true,
                  unselectedLabelColor: topTitleIcon,
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
                      margin: EdgeInsets.only(right: 20),
                      width: 0,
                      height: 45,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: topTitleIcon,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 45,
                      child: Center(
                        child: Text(
                          "CHATS",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 45,
                      child: Center(
                        child: Text(
                          "STATUS",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      child: Center(
                        child: Text(
                          "CALLS",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: Container(
        color: backgroundWA,
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

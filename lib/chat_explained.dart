import 'package:flutter/material.dart';

import 'chat.dart';

class ChatExplained extends StatefulWidget {
  const ChatExplained({Key? key}) : super(key: key);

  @override
  _ChatExplainedState createState() => _ChatExplainedState();
}

class _ChatExplainedState extends State<ChatExplained> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 29, 37),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              ListView(
                children: [
                  Column(
                    children: [
                      Container(
                          color: Colors.black26,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.white70,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.black26,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.white70,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.black26,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.white70,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.black26,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                      Container(
                          color: Colors.white70,
                          height: 100,
                          width: MediaQuery.of(context).size.width),
                    ],
                  ),
                ],
              ),
              //CHAT INPUT AND TOPBAR
              Column(
                children: [
                  //TOP BAR
                  Container(
                    color: Color.fromARGB(255, 35, 45, 54),
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatPage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 8),
                            height: 20,
                            width: 20,
                            child: Icon(Icons.arrow_back, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 41,
                              width: 41,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "last seen today at 12:00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.video_call_rounded,
                                    color: Colors.white),
                                Icon(Icons.phone, color: Colors.white),
                                Icon(Icons.menu, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SPACE AREA
                  Spacer(),
                  //CHAT INPUT
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 35, 45, 54),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        margin: EdgeInsets.only(bottom: 3),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 60,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(Icons.emoji_emotions,
                                  color: Colors.grey),
                            ),
                            Container(
                              width: 190,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: "Type a message",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  fillColor: Colors.transparent,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.attach_file_outlined,
                                        color: Colors.grey),
                                    Icon(
                                      Icons.camera_alt,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color.fromARGB(255, 0, 176, 156),
                            child: Icon(Icons.mic, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

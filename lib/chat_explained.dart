import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'chat.dart';

class ChatExplained extends StatelessWidget {
  const ChatExplained({Key? key}) : super(key: key);

  final String bubbleChatRight = ".";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 29, 37),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              // BACKGROUND CHAT
              SvgPicture.asset(
                "assets/svg/bg.svg",
                fit: BoxFit.fitHeight,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              // CHAT BUBBLES
              ListView(
                children: [
                  SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 80),
                        // Single Right Ballon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                minWidth: 60,
                                maxWidth:
                                    MediaQuery.of(context).size.width - 15,
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 7.5),
                              decoration: BoxDecoration(
                                color: Colors.green[900],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              height: 50,
                              width: bubbleChatRight.length * 10,
                              child: Center(
                                child: Container(
                                  constraints: BoxConstraints(
                                    minWidth: 30,
                                    maxWidth: 200,
                                  ),
                                  color: Colors.transparent,
                                  child: Text(
                                    bubbleChatRight,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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

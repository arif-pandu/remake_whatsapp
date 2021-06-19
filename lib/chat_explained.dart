import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:remake_whatsapp/widget/chat_bubble_left.dart';
import 'package:remake_whatsapp/widget/chat_bubble_right.dart';
import 'package:remake_whatsapp/theme/theme.dart';
import 'chat.dart';

class ChatExplained extends StatelessWidget {
  final String bubbleChatRight = "Tes tes dicoba";
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // BACKGROUND CHAT
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage("assets/images/bg_wa.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
        // SAFE AREA GREY BACKGROUND
        Align(
          alignment: Alignment(0, -1),
          child: Container(
            color: safeareaColor,
            height: 50,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              child: Stack(
                children: [
                  // CHAT BUBBLES
                  ListView(
                    children: [
                      SafeArea(
                        minimum: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 80),
                            // Single Right Ballon
                            Bubble(
                              color: leftBubbleChatColor,
                              alignment: Alignment.center,
                              child: Text(
                                "Today",
                                style: TextStyle(color: textBubbleColor),
                              ),
                            ),
                            BubbleChatRight(
                                bubbleChatRight: "Kabar, baik?",
                                nextChat: true),
                            BubbleChatLeft(
                                bubbleChatLeft: "Hmmmm ya", nextChat: true),
                            BubbleChatRight(
                                bubbleChatRight: "Masih idup?", nextChat: true),
                            BubbleChatLeft(
                                bubbleChatLeft: "gatau", nextChat: true),
                            BubbleChatRight(
                                bubbleChatRight: "wkwkwkwkwkwkwkwkwk",
                                nextChat: false),
                            BubbleChatLeft(
                                bubbleChatLeft: "galucu", nextChat: true),
                            BubbleChatRight(
                                bubbleChatRight:
                                    "Ya Allah, salah opo neh aku ki",
                                nextChat: true),
                            BubbleChatLeft(
                                bubbleChatLeft: "ya", nextChat: true),
                            BubbleChatLeft(
                                bubbleChatLeft: "banyak", nextChat: false),
                            BubbleChatLeft(
                                bubbleChatLeft: "gatau", nextChat: false),
                            BubbleChatRight(
                                bubbleChatRight: "Lha kok", nextChat: true),
                            BubbleChatLeft(
                                bubbleChatLeft: "au ah, gelap", nextChat: true),
                            BubbleChatRight(
                                bubbleChatRight:
                                    messageController.text.toString(),
                                nextChat: true),
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
                        color: topTitleBar,
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
                                child:
                                    Icon(Icons.arrow_back, color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 5),
                            // PHOTO PROFILE
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
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "last seen today at 12:00",
                                    style: TextStyle(
                                      fontSize: 14,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.video_call_rounded,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
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
                              color: inputBarColor,
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
                                      color: textInputColor),
                                ),
                                Container(
                                  width: 190,
                                  child: TextField(
                                    controller: messageController,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "Type a message",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: textInputColor,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
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
                                        Icon(Icons.attach_file,
                                            color: textInputColor),
                                        Icon(
                                          Icons.camera_alt_rounded,
                                          color: textInputColor,
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
                                color: floatingButtonColor,
                                child: (messageController.text.isEmpty)
                                    ? Icon(Icons.mic, color: Colors.white)
                                    : Icon(Icons.send, color: Colors.white),
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
        ),
      ],
    );
  }
}

// class BubbleChatRight extends StatelessWidget {
//   const BubbleChatRight({
//     Key? key,
//     required this.bubbleChatRight,
//   }) : super(key: key);

//   final String bubbleChatRight;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Container(
//             constraints: BoxConstraints(
//               minWidth: 60,
//               maxWidth: MediaQuery.of(context).size.width - 15,
//             ),
//             margin: EdgeInsets.symmetric(horizontal: 5),
//             decoration: BoxDecoration(
//               color: Colors.green[900],
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(40),
//                 bottomLeft: Radius.circular(40),
//                 bottomRight: Radius.circular(40),
//               ),
//             ),
//             height: 50,
//             width: bubbleChatRight.length * 8.3 + 5,
//             child: Center(
//               child: Container(
//                 constraints: BoxConstraints(
//                   minWidth: 30,
//                   maxWidth: 200,
//                 ),
//                 color: Colors.transparent,
//                 child: Text(
//                   bubbleChatRight,
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

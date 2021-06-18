import 'package:flutter/material.dart';
import 'package:remake_whatsapp/chat_explained.dart';
import 'package:remake_whatsapp/theme/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 16, 29, 37),
      child: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  //CHAT LIST START
                  BuildChatContact(
                      user: "User 1", message: "Hai", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 2", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 3", message: "Aloha", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 4", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 5", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 6", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 7", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 8", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 9", message: "Halo", lastSeen: "02/10/2020"),
                  BuildChatContact(
                      user: "User 10", message: "Halo", lastSeen: "02/10/2020"),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Container(
              margin: EdgeInsets.only(right: 20, bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 65,
                  width: 65,
                  color: floatingButtonColor,
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildChatContact extends StatelessWidget {
  const BuildChatContact({
    Key? key,
    required this.user,
    required this.message,
    required this.lastSeen,
  }) : super(key: key);

  final String user;
  final String message;
  final String lastSeen;

  @override
  Widget build(BuildContext context) {
    return Container(
      //CONTACT CHAT
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 15, bottom: 13, top: 13, right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 64,
                      width: 64,
                      color: Color.fromARGB(255, 196, 196, 196),
                    ),
                  ),
                ),
                //ONTAP AREA
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatExplained(),
                            ),
                          );
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  user,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: Text(
                                  message,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: messageThumbColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment(1, -1),
                          child: Container(
                            margin: EdgeInsets.only(top: 21, right: 12),
                            child: Text(
                              lastSeen,
                              style: TextStyle(
                                fontSize: 12,
                                color: dateAndTimeColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(150, 20, 40, 50),
          ),
        ],
      ),
    );
  }
}

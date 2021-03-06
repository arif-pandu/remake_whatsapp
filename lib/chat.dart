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
                    user: "User 1",
                    message: "Hai",
                    lastSeen: "02/10/2020",
                    urlProfile: "default.jpg",
                  ),
                  BuildChatContact(
                      user: "User 2",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "tumblr.jpg"),
                  BuildChatContact(
                      user: "User 3",
                      message: "Aloha",
                      lastSeen: "02/10/2020",
                      urlProfile: "kimi no nawa 3.jpg"),
                  BuildChatContact(
                      user: "User 4",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "olaf.jpg"),
                  BuildChatContact(
                      user: "User 5",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "psyduck.jpg"),
                  BuildChatContact(
                      user: "User 6",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "togepi.jpg"),
                  BuildChatContact(
                      user: "User 7",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "default.jpg"),
                  BuildChatContact(
                      user: "User 8",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "eye.jpg"),
                  BuildChatContact(
                      user: "User 9",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "dora.png"),
                  BuildChatContact(
                      user: "User 10",
                      message: "Halo",
                      lastSeen: "02/10/2020",
                      urlProfile: "togepi.jpg"),
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
    required this.urlProfile,
  }) : super(key: key);

  final String user;
  final String message;
  final String lastSeen;
  final String urlProfile;

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
                      height: 60,
                      width: 60,
                      color: Color.fromARGB(255, 196, 196, 196),
                      child: Image(
                        image: AssetImage("assets/images/" + urlProfile),
                        fit: BoxFit.cover,
                      ),
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
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2),
                                child: Text(
                                  message,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: messageThumbColor,
                                      fontFamily: "Helvetica"),
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

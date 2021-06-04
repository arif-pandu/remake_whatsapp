import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
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
                  BuildChatContact(user: "User 1", createdAt: "10:00"),
                  BuildChatContact(user: "User 2", createdAt: "12:00"),
                  BuildChatContact(user: "User 3", createdAt: "12:34"),
                  BuildChatContact(user: "User 4", createdAt: "12:00"),
                  BuildChatContact(user: "User 5", createdAt: "12:00"),
                  BuildChatContact(user: "User 6", createdAt: "12:00"),
                  BuildChatContact(user: "User 7", createdAt: "12:00"),
                  BuildChatContact(user: "User 8", createdAt: "12:00"),
                  BuildChatContact(user: "User 9", createdAt: "12:00"),
                  BuildChatContact(user: "User 10", createdAt: "12:00"),
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
                  color: Color.fromARGB(255, 0, 176, 156),
                  child: Icon(
                    Icons.camera_alt,
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
    required this.createdAt,
  }) : super(key: key);

  final String user;
  final String createdAt;

  @override
  Widget build(BuildContext context) {
    return Container(
      //CONTACT CHAT
      color: Colors.transparent,
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, bottom: 13, top: 13, right: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 64,
                width: 64,
                color: Color.fromARGB(255, 196, 196, 196),
              ),
            ),
          ),
          Container(
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
                      color: Color.fromARGB(255, 196, 196, 196),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    createdAt,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 196, 196, 196)),
                  ),
                ),
              ],
            ),
          ),
          //
        ],
      ),
    );
  }
}

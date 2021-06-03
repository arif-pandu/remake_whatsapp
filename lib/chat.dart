import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "USER",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            child: Text(
                              "message",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.amber,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.white,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.amber,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.white,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.amber,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.white,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.amber,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
              Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width),
            ],
          ),
        ],
      ),
    );
  }
}

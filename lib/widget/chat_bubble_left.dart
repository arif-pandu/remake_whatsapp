import 'package:flutter/material.dart';

class BubbleChatLeft extends StatelessWidget {
  const BubbleChatLeft({
    Key? key,
    required this.bubbleChatLeft,
  }) : super(key: key);

  final String bubbleChatLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              minWidth: 60,
              maxWidth: MediaQuery.of(context).size.width - 15,
            ),
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            height: 50,
            width: bubbleChatLeft.length * 8.3 + 5,
            child: Center(
              child: Container(
                constraints: BoxConstraints(
                  minWidth: 30,
                  maxWidth: 200,
                ),
                color: Colors.transparent,
                child: Text(
                  bubbleChatLeft,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

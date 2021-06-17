import 'package:flutter/material.dart';

class BubbleChatRight extends StatelessWidget {
  const BubbleChatRight({
    Key? key,
    required this.bubbleChatRight,
  }) : super(key: key);

  final String bubbleChatRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
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
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            height: 50,
            width: bubbleChatRight.length * 8.3 + 5,
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
    );
  }
}

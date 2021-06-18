import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class BubbleChatLeft extends StatelessWidget {
  const BubbleChatLeft({
    Key? key,
    required this.bubbleChatLeft,
  }) : super(key: key);

  final String bubbleChatLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bubble(
          margin: BubbleEdges.only(top: 7.5, left: 7.5),
          child: Text(
            bubbleChatLeft,
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          color: Color.fromARGB(255, 35, 45, 54),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop),
    );
  }
}

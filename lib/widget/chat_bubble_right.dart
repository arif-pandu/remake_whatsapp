import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class BubbleChatRight extends StatelessWidget {
  const BubbleChatRight({
    Key? key,
    required this.bubbleChatRight,
  }) : super(key: key);

  final String bubbleChatRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bubble(
        margin: BubbleEdges.only(top: 5, right: 7.5, bottom: 5),
        padding: BubbleEdges.symmetric(vertical: 10),
        child: Text(
          bubbleChatRight,
          style: TextStyle(
            color: Colors.grey[300],
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
        color: Color.fromARGB(255, 35, 45, 54),
        alignment: Alignment.topRight,
        nip: BubbleNip.rightTop,
      ),
    );
  }
}

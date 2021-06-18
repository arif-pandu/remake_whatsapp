import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:remake_whatsapp/theme/theme.dart';

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
              color: textBubbleColor,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          color: leftBubbleChatColor,
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop),
    );
  }
}

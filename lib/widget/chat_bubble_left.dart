import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:remake_whatsapp/theme/theme.dart';

class BubbleChatLeft extends StatelessWidget {
  const BubbleChatLeft({
    Key? key,
    required this.bubbleChatLeft,
    required this.nextChat,
  }) : super(key: key);

  final String bubbleChatLeft;
  final bool nextChat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bubble(
          stick: false,
          showNip: nextChat,
          margin: BubbleEdges.only(top: 5, left: 7.5),
          child: Text(
            bubbleChatLeft,
            style: TextStyle(
              color: Colors.white,
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

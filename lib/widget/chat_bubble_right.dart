import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:remake_whatsapp/theme/theme.dart';

class BubbleChatRight extends StatelessWidget {
  const BubbleChatRight({
    Key? key,
    required this.bubbleChatRight,
    required this.nextChat,
  }) : super(key: key);

  final String bubbleChatRight;
  final bool nextChat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bubble(
        stick: false,
        showNip: nextChat,
        margin: BubbleEdges.only(top: 5, right: 7.5),
        // padding: BubbleEdges.symmetric(vertical: 6),
        child: Text(
          bubbleChatRight,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.normal,
            fontFamily: "Helvetica",
          ),
        ),
        color: rightBubbleChatColor,
        alignment: Alignment.topRight,
        nip: BubbleNip.rightTop,
      ),
    );
  }
}

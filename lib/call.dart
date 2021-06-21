import 'package:flutter/material.dart';
import 'package:remake_whatsapp/theme/theme.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundWA,
      child: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_forward,
                    colorIcon: indicatorColor,
                    urlPhoneThumb: "default.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_back,
                    colorIcon: indicatorRedColor,
                    urlPhoneThumb: "tumblr.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_forward,
                    colorIcon: indicatorColor,
                    urlPhoneThumb: "dora.png",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_back,
                    colorIcon: indicatorRedColor,
                    urlPhoneThumb: "psyduck.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_forward,
                    colorIcon: indicatorColor,
                    urlPhoneThumb: "togepi.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_back,
                    colorIcon: indicatorRedColor,
                    urlPhoneThumb: "kimi no nawa 3.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_forward,
                    colorIcon: indicatorColor,
                    urlPhoneThumb: "default.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_back,
                    colorIcon: indicatorRedColor,
                    urlPhoneThumb: "tumblr.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_forward,
                    colorIcon: indicatorColor,
                    urlPhoneThumb: "kimi no nawa 3.jpg",
                  ),
                  BuildCallLog(
                    user: "user",
                    lastCall: "today 12:34 AM",
                    iconCall: Icons.arrow_back,
                    colorIcon: indicatorRedColor,
                    urlPhoneThumb: "default.jpg",
                  ),
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
                    Icons.phone,
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

class BuildCallLog extends StatelessWidget {
  const BuildCallLog({
    Key? key,
    required this.user,
    required this.lastCall,
    required this.iconCall,
    required this.colorIcon,
    required this.urlPhoneThumb,
  }) : super(key: key);

  final String user;
  final String lastCall;
  final IconData iconCall;
  final Color colorIcon;
  final String urlPhoneThumb;

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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                          image: AssetImage("assets/images/" + urlPhoneThumb),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 5),
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
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 2),
                                  child: Icon(
                                    iconCall,
                                    color: colorIcon,
                                    size: 14,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  child: Text(
                                    lastCall,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: messageThumbColor,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment(1, 0),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 20,
                          width: 20,
                          child: Icon(Icons.phone, color: indicatorColor),
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

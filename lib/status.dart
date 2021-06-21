import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:remake_whatsapp/theme/theme.dart';

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
                  //MY STATUS
                  Container(
                    //CONTACT CHAT
                    color: Colors.transparent,
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, bottom: 8, top: 8, right: 15),
                          child: DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(50),
                            padding: EdgeInsets.all(4),
                            color: Colors.white,
                            strokeWidth: 1.5,
                            dashPattern: [60, 5, 60, 5],
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                height: 57,
                                width: 57,
                                color: Color.fromARGB(255, 196, 196, 196),
                                child: Image(
                                  image:
                                      AssetImage("assets/images/default.jpg"),
                                ),
                              ),
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
                                  "My Status",
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
                                  "today 10.00",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 196, 196, 196)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(Icons.more_vert, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  //MARGIN BAR FOR STATUS
                  Container(
                    height: 2,
                    color: backgroundWA.withGreen(35),
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                  //STATUS LIST START
                  BuildStatusContact(
                    user: "Mapandu",
                    createdAt: "today 10:00",
                    urlStatusThumb: "togepi.jpg",
                  ),
                  BuildStatusContact(
                      user: "Dulsimad",
                      createdAt: "yesterday 10:00",
                      urlStatusThumb: "olaf.jpg"),
                  BuildStatusContact(
                      user: "Zsuska",
                      createdAt: "tomorrow 10:00",
                      urlStatusThumb: "tumblr.jpg"),
                  BuildStatusContact(
                      user: "Anonim",
                      createdAt: "last week 10:00",
                      urlStatusThumb: "eye.jpg"),
                  BuildStatusContact(
                      user: "She :)",
                      createdAt: "today 10:00",
                      urlStatusThumb: "psyduck.jpg"),
                  BuildStatusContact(
                      user: "User 1",
                      createdAt: " tonight 10:00",
                      urlStatusThumb: "dora.png"),
                  BuildStatusContact(
                      user: "User 1",
                      createdAt: "today 10:00",
                      urlStatusThumb: "kimi no nawa 3.jpg"),
                  BuildStatusContact(
                      user: "User 2",
                      createdAt: "today 10:00",
                      urlStatusThumb: "togepi.jpg"),
                  BuildStatusContact(
                      user: "User 3",
                      createdAt: "today 10:00",
                      urlStatusThumb: "psyduck.jpg"),
                  BuildStatusContact(
                      user: "User 14",
                      createdAt: "today 10:00",
                      urlStatusThumb: "togepi.jpg"),
                  BuildStatusContact(
                      user: "User 5",
                      createdAt: "today 10:00",
                      urlStatusThumb: "psyduck.jpg"),
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

class BuildStatusContact extends StatelessWidget {
  const BuildStatusContact({
    Key? key,
    required this.user,
    required this.createdAt,
    required this.urlStatusThumb,
  }) : super(key: key);

  final String user;
  final String createdAt;
  final String urlStatusThumb;

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
            margin: EdgeInsets.only(left: 15, bottom: 8, top: 8, right: 17.5),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(50),
              padding: EdgeInsets.all(4),
              color: indicatorColor,
              strokeWidth: 1.5,
              dashPattern: [30, 5, 30, 5, 30, 5, 30, 5],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 57,
                  width: 57,
                  color: Color.fromARGB(255, 196, 196, 196),
                  child: Image(
                    image: AssetImage("assets/images/" + urlStatusThumb),
                    fit: BoxFit.cover,
                  ),
                ),
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
                      fontWeight: FontWeight.w600,
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

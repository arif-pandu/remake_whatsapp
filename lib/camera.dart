import 'package:flutter/material.dart';
import 'package:remake_whatsapp/theme/theme.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundWA,
      child: Center(
        child: Text(
          "This is camera\n but i hide it \n \n \n actually i dont know yet how to code",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

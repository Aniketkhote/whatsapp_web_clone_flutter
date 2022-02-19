import 'package:flutter/material.dart';
import 'package:quickly/quickly.dart';
import '../constant.dart';

Container welcomePage() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 185),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'img/intro-connection-dark.jpg',
          width: 225,
        ),
        SizedBox(height: 15),
        Text('Keep you phone connected').h4.color(Colors.white60),
        SizedBox(height: 15),
        Text('Whatsapp connects to your phone to sync messages. To reduce data\nusage, connect your phone to Wi-Fi')
            .body2
            .color(Colors.white60)
            .textCenter,
        Divider(height: 60, thickness: 1, color: Colors.white12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.computer, color: Colors.white70, size: 20),
            SizedBox(width: 10),
            Text('WhatsApp is available for Windows.')
                .body2
                .color(Colors.white60),
            Text(' get it here.').body2.color(kActiveColor),
          ],
        ),
      ],
    ),
  );
}

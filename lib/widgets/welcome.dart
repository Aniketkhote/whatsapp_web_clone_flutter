import 'package:flutter/material.dart';

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
          width: 300,
        ),
        SizedBox(height: 15),
        Text(
          'Keep you phone connected',
          style: TextStyle(color: Colors.white60, fontSize: 30),
        ),
        SizedBox(height: 15),
        Text(
          'Whatsapp connects to your phone to sync messages. To reduce data\nusage, connect your phone to Wi-Fi',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        Divider(
          height: 60,
          thickness: 1,
          color: Colors.white12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.computer,
              color: Colors.white70,
              size: 20,
            ),
            SizedBox(width: 10),
            Text(
              'WhatsApp is available for Windows.',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                ' get it here.',
                style: TextStyle(
                  color: kActiveColor,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

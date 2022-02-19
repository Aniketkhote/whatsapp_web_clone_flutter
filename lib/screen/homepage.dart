import 'package:flutter/material.dart';
import 'package:whatsapp_web_clone/constant.dart';
import 'package:whatsapp_web_clone/widgets/chat_conatainer.dart';
import 'package:whatsapp_web_clone/widgets/chat_list_conatiner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .30,
            height: MediaQuery.of(context).size.height,
            color: kSecondaryColor,
            child: ChatListContainer(),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .70,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff222F37),
            child: ChatContainer(),
          ),
        ],
      ),
    );
  }
}

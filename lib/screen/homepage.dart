import 'package:flutter/material.dart';
import 'package:whatsapp_web_clone/constant.dart';
import 'package:whatsapp_web_clone/widgets/chat_conatainer.dart';
import 'package:whatsapp_web_clone/widgets/chat_list_conatiner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height,
            color: kSecondaryColor,
            child: ChatListContainer(),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .65,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff222F37),
            child: ChatContainer(
              isChatActive: false,
            ),
          ),
        ],
      ),
    );
  }
}

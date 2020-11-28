import 'package:flutter/material.dart';
import 'package:whatsapp_web_clone/widgets/chat_box.dart';
import 'package:whatsapp_web_clone/widgets/welcome.dart';

class ChatContainer extends StatelessWidget {
  final int index;
  final bool isChatActive;
  ChatContainer({this.index, this.isChatActive});
  @override
  Widget build(BuildContext context) {
    return isChatActive ? ChatBox(index: index) : welcomePage();
  }
}

import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  final int index;

  const ChatBox({Key? key, required this.index}) : super(key: key);
  @override
  _ChatBoxState createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.index.toString()),
    );
  }
}

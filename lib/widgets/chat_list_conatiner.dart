import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_web_clone/constant.dart';
import 'package:whatsapp_web_clone/widgets/chat_conatainer.dart';
import 'package:quickly/quickly.dart';

class ChatListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nav(),
        searchBar(),
        chatList().expand(),
      ],
    );
  }

  Widget chatList() {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person, color: Colors.white30),
              backgroundColor: Colors.white12,
            ),
            chatContent().expand(),
          ],
        ).pl12.onTap(() =>
            Get.to(() => ChatContainer(index: index, isChatActive: true)));
      },
    ).pb12;
  }

  Container chatContent() {
    return Container(
      margin: FxPadding.px12,
      padding: FxPadding.py12,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white24, width: .7),
        ),
      ),
      child: Row(
        children: [
          nameAndMessage().expand(),
          time(),
        ],
      ),
    );
  }

  Column time() {
    return Column(
      children: [
        Text('5.45 PM').caption1.color(Colors.white70),
        SizedBox(height: 8),
        Icon(Icons.volume_off, color: Colors.white30, size: 18),
      ],
    );
  }

  Column nameAndMessage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: FxPadding.pr12,
          child: Text('Random Name')
              .body2
              .bold
              .color(Colors.white70)
              .ellipsis
              .maxLine(1),
        ),
        SizedBox(height: 8),
        Text('data').md.color(Colors.white70),
      ],
    );
  }

  Container searchBar() {
    return Container(
      height: 50,
      padding: FxPadding.pxy(h: 12, v: 5),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        border: Border(
          bottom: BorderSide(color: Colors.white12, width: .7),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: FxPadding.pxy(v: 8, h: 50),
          border: OutlineInputBorder(
            borderRadius: FxRadius.r50,
            borderSide: BorderSide(color: Colors.white12, width: 1),
          ),
          prefixIcon:
              Icon(Icons.search_sharp, color: Colors.white30, size: 20).pl12,
          hintText: "Search or start new chat",
          fillColor: kPrimaryColor,
          filled: true,
          hintStyle: TextStyle(color: Colors.white30, fontSize: 14),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white12, width: 1),
            borderRadius: FxRadius.r50,
          ),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

Container nav() {
  return Container(
    color: kPrimaryColor,
    height: 60,
    padding: FxPadding.px12,
    child: Row(
      children: [
        CircleAvatar(
          child: Icon(Icons.person, color: Colors.white30),
          backgroundColor: Colors.white12,
        ),
        Spacer(),
        Row(
          children: [
            activityIcon(icon: Icons.filter_tilt_shift, tip: 'Status'),
            activityIcon(icon: Icons.add, tip: 'New Chat'),
            activityIcon(icon: Icons.more_horiz, tip: 'Menu'),
          ],
        ),
      ],
    ),
  );
}

Widget activityIcon({required IconData icon, required String tip}) {
  return Container(
    padding: FxPadding.pl20,
    child: Tooltip(
      message: tip,
      child: Icon(icon, color: Colors.white60),
    ),
  );
}

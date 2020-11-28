import 'package:flutter/material.dart';
import 'package:whatsapp_web_clone/constant.dart';
import 'package:whatsapp_web_clone/widgets/chat_conatainer.dart';

class ChatListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nav(),
        searchBar(),
        Expanded(
          child: chatList(),
        ),
      ],
    );
  }

  Container chatList() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 10, left: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatContainer(
                      index: index,
                      isChatActive: true,
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white30,
                    ),
                    backgroundColor: Colors.white12,
                  ),
                  Expanded(child: chatContent()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container chatContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white24, width: .7),
        ),
      ),
      child: Row(
        children: [
          Expanded(child: nameAndMessage()),
          time(),
        ],
      ),
    );
  }

  Column time() {
    return Column(
      children: [
        Text(
          '5.45 PM',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
        Icon(
          Icons.volume_off,
          color: Colors.white30,
          size: 20,
        ),
      ],
    );
  }

  Column nameAndMessage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          'data',
          style: TextStyle(color: Colors.white70),
        ),
      ],
    );
  }

  Container searchBar() {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        border: Border(
          bottom: BorderSide(color: Colors.white12, width: .7),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.white12, width: 1),
          ),
          prefixIcon: Icon(
            Icons.search_sharp,
            color: Colors.white30,
          ),
          hintText: "Search or start new chat",
          fillColor: kPrimaryColor,
          filled: true,
          hintStyle: TextStyle(color: Colors.white30),
          focusColor: Colors.white12,
        ),
      ),
    );
  }
}

Container nav() {
  return Container(
    color: kPrimaryColor,
    height: 60,
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://img.cinemablend.com/filter:scale/quill/7/2/e/d/2/5/72ed25eff59dc0bc480d81e8eed1448a99dc1655.jpg?mw=600'),
        ),
        Row(
          children: [
            activityIcon(icon: Icons.filter_tilt_shift, tip: 'Status'),
            activityIcon(icon: Icons.comment, tip: 'New Chat'),
            activityIcon(icon: Icons.more_vert, tip: 'Menu'),
          ],
        ),
      ],
    ),
  );
}

Widget activityIcon({IconData icon, String tip}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: InkWell(
      onTap: () {},
      child: Tooltip(
        message: tip,
        child: Icon(
          icon,
          color: Colors.white60,
        ),
      ),
    ),
  );
}

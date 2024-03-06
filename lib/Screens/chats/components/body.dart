import 'package:chat_app/Screens/messages/message_screen.dart';
import 'package:chat_app/components/filled_outline_button.dart';
import 'package:chat_app/models/Chat.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chat_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              DefaultPadding, 0, DefaultPadding, DefaultPadding),
          color: PrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: DefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.pushNamed(context,MessagesScreen.route_name),
            ),
          ),
        ),
      ],
    );
  }
}

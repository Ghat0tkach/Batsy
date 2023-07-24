import 'package:batsy/widgets/appbar.dart';
import 'package:batsy/widgets/chat_item.dart';
import 'package:batsy/widgets/text_and_voice.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => const ChatItem(
                      text: "You;re Batman",
                      isMe: true,
                    ))),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextAndVoiceField(),
        ),
      ]),
    );
  }
}

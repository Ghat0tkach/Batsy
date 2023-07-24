import 'package:batsy/widgets/appbar.dart';
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
                itemCount: 30,
                itemBuilder: (context, index) => const Text("You;re Batman"))),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextAndVoiceField(),
        ),
      ]),
    );
  }
}

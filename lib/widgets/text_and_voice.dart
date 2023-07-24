import 'package:batsy/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

enum InputMode { text, voice }

class TextAndVoiceField extends StatefulWidget {
  const TextAndVoiceField({super.key});

  @override
  State<TextAndVoiceField> createState() => _TextAndVoiceFieldState();
}

class _TextAndVoiceFieldState extends State<TextAndVoiceField> {
  InputMode _inputMode = InputMode.voice;
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          onChanged: (value) {
            value.isNotEmpty
                ? SetInputMode(InputMode.text)
                : SetInputMode(InputMode.voice);
          },
          cursorColor: Theme.of(context).colorScheme.onPrimary,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary))),
        )),
        const SizedBox(width: 06),
        ToggleButton(
          inputMode: _inputMode,
        ),
      ],
    );
  }

  void SetInputMode(InputMode inputMode) {
    setState(() {
      _inputMode = inputMode;
    });
  }
}

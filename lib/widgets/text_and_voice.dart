import 'package:flutter/material.dart';

class TextAndVoiceField extends StatelessWidget {
  const TextAndVoiceField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
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
      ],
    );
  }
}

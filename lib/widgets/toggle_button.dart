import 'package:batsy/widgets/text_and_voice.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  final InputMode _inputMode;
  const ToggleButton({super.key, required InputMode inputMode})
      : _inputMode = inputMode;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15)),
        onPressed: () {},
        child:
            Icon(widget._inputMode == InputMode.text ? Icons.send : Icons.mic));
  }
}

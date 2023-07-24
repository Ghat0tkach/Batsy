import 'package:batsy/providers/active_theme_provider.dart';
import 'package:batsy/widgets/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Batsy',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          )),
      actions: [
        Row(
          children: [
            Consumer(builder: (context, ref, child) {
              return Icon(ref.watch(activeThemeProvider) == Themes.dark
                  ? Icons.dark_mode
                  : Icons.light_mode);
            }),
            SizedBox(width: 8),
            ThemeSwitch()
          ],
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

import 'package:flutter/material.dart';
import 'package:localization/l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  final bool isArabic;
  final Function(bool) onSwitch;

  const HomeScreen({
    super.key,
    required this.isArabic,
    required this.onSwitch,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.hello),
        actions: [
          Switch(
            value: isArabic,
            onChanged: onSwitch,
          ),
        ],
      ),
      body: Center(
        child: Text(t.welcome),
      ),
    );
  }
}

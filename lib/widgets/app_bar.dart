import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../localization/locales.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  CustomAppBar({required this.toggleTheme, required this.isDarkMode});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  late FlutterLocalization _flutterLocalization;
  late String _currentLocale;

  @override
  void initState() {
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale!.languageCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(LocaleData.title.getString(context)),
      actions: [
        DropdownButton(
          value: _currentLocale,
          items: const [
            DropdownMenuItem(
              value: "ar",
              child: Text("العربية"),
            ),
            DropdownMenuItem(
              value: "fr",
              child: Text("Français"),
            ),
            DropdownMenuItem(
              value: "en",
              child: Text("English"),
            ),
          ],
          onChanged: (value) {
            _setLocale(value);
          },
        ),
        IconButton(
          icon: Icon(widget.isDarkMode ? Icons.dark_mode : Icons.light_mode),
          onPressed: widget.toggleTheme,
        ),
      ],
    );
  }

  void _setLocale(String? value) {
    if (value == null) return;
    if (value == "en") {
      _flutterLocalization.translate("en");
    } else if (value == "fr") {
      _flutterLocalization.translate("fr");
    } else if (value == "ar") {
      _flutterLocalization.translate("ar");
    }
    setState(() {
      _currentLocale = value;
    });
  }
}

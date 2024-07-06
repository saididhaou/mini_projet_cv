import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../localization/locales.dart';

class MyNavigationRail extends StatefulWidget {
  final ValueChanged<int> onDestinationSelected;
  final int selectedIndex;

  const MyNavigationRail({
    super.key,
    required this.onDestinationSelected,
    required this.selectedIndex,
  });

  @override
  _MyNavigationRailState createState() => _MyNavigationRailState();
}

class _MyNavigationRailState extends State<MyNavigationRail> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      useIndicator: true,
      extended: false,
      minWidth: 85,
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: widget.onDestinationSelected,
      labelType: NavigationRailLabelType.all,
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/logo.jpg'),
      ),
      destinations: [
        NavigationRailDestination(
          icon: const Icon(Icons.account_circle_outlined),
          selectedIcon: const Icon(Icons.account_circle),
          label: Text(LocaleData.personal_info.getString(context)),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.school_outlined),
          selectedIcon: const Icon(Icons.school),
          label: Text(LocaleData.studies.getString(context)),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.work_outline),
          selectedIcon: const Icon(Icons.work),
          label: Text(LocaleData.experience.getString(context)),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.emoji_events_outlined),
          selectedIcon: const Icon(Icons.emoji_events),
          label: Text(LocaleData.skills_cerifs.getString(context)),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.location_on_outlined),
          selectedIcon: const Icon(Icons.location_on_outlined),
          label: Text(LocaleData.adress.getString(context)),
        ),
      ],
    );
  }
}

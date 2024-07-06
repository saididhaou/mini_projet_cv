import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../pages/personelInfo.page.dart';
import '../pages/portfolio.page.dart';
import '../pages/profAdress.page.dart';
import '../pages/skillsCerifs.page.dart';
import '../pages/studies.page.dart';
import '../widgets/app_bar.dart';
import '../widgets/navigation_rail.dart';
import 'expProf.page.dart';

class HomePage extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  HomePage(
      {super.key,
      required this.toggleTheme,
      required this.isDarkMode,
      required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late bool isDarkMode;
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    super.initState();
  }

  _buildPage() {
    switch (_selectedIndex) {
      case 0:
        return PersonalInfoPage();
      case 1:
        return StudiesPage();
      case 2:
        return ExpProfPage();
      case 3:
        return SkillsCertifsPage();
      case 4:
        return PortfolioPage();
      case 5:
        return MapScreen();
      default:
        return PersonalInfoPage();
    }
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          toggleTheme: widget.toggleTheme, isDarkMode: widget.isDarkMode),
      body: Row(
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: 100,
            child: MyNavigationRail(
              onDestinationSelected: _onDestinationSelected,
              selectedIndex: _selectedIndex,
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: _buildPage(),
            ),
          ),
        ],
      ),
    );
  }
}

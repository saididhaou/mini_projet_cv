import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:saididhaou/localization/locales.dart';

class SkillsCertifsPage extends StatelessWidget {
  final List<Skill> skills = [
    Skill(name: 'C', level: 0.8),
    Skill(name: 'Java', level: 0.8),
    Skill(name: 'C++', level: 0.5),
    Skill(name: 'Flutter', level: 0.7),
    Skill(name: 'Dart', level: 0.7),
    Skill(name: 'JavaScript', level: 0.7),
    Skill(name: 'Python', level: 0.8),
    Skill(name: 'PHP', level: 0.8),
    Skill(name: 'LARAVEL', level: 0.9),
    Skill(name: 'HTML', level: 0.9),
    Skill(name: 'Oarcle', level: 0.7),
    Skill(name: 'MySQL', level: 0.7),
    Skill(name: 'Firebase', level: 0.5),
    Skill(name: 'SQLite', level: 0.6),
    // Ajoutez plus de compétences ici
  ];

  SkillsCertifsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  LocaleData.skills_title.getString(context),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: skills.map((skill) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          skill.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: skill.level,
                          minHeight: 6,
                          // backgroundColor: Colors.grey[300],
                          // valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Skill {
  final String name;
  final double level;

  Skill({required this.name, required this.level});
}

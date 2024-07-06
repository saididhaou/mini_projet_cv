import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("fr", LocaleData.FR),
  MapLocale("ar", LocaleData.AR),
];
mixin LocaleData {
  static const String title = 'title';
  static const String personal_info = 'personal_info';
  static const String studies = 'studies';
  static const String experience = 'experience';
  static const String skills_cerifs = 'skills_certifs';
  static const String portfolio = 'portfolio';
  static const String adress = 'adress';

  static const Map<String, dynamic> EN = {
    title: 'Curriculum Vitae',
    personal_info: 'Personal Info.',
    studies: 'Studies',
    experience: 'Experiences',
    skills_cerifs: 'Skills & certifs',
    portfolio: 'Portfolio',
    adress: 'adress',
  };
  static const Map<String, dynamic> FR = {
    title: 'Curriculum Vitae',
    personal_info: 'Info. personnel',
    studies: 'Etudes',
    experience: 'Expériences',
    skills_cerifs: 'Compétences',
    portfolio: 'Portfolio',
    adress: 'Adresse'
  };
  static const Map<String, dynamic> AR = {
    title: 'السيرة الذاتية',
    personal_info: 'معطيات شخصية',
    studies: 'الدراسة',
    experience: 'الخبرات',
    skills_cerifs: 'المهارات والشهادات',
    portfolio: 'معرض الأعمال',
    adress: 'العنوان'
  };
}

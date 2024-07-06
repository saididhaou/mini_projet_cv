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
  static const String send_mail = 'send_mail';
  static const String error_url = 'error_url';
  static const String pers_info_title = 'pers_info_title';
  static const String skills_title = 'skills_title';

  static const String stud_title = 'stud_title';
  static const String stud_label1 = 'label1';
  static const String stud_txt1 = 'stud_txt1';
  static const String stud_label2 = 'label2';
  static const String stud_txt2 = 'stud_txt2';
  static const String stud_label3 = 'label3';
  static const String stud_txt3 = 'stud_txt3';
  static const String stud_label4 = 'label4';
  static const String stud_txt4 = 'stud_txt4';
  static const String stud_label5 = 'label5';
  static const String stud_txt5 = 'stud_txt5';

  static const String exp_title = 'exp_title';
  static const String exp_label1 = 'exp_label1';
  static const String exp_txt1 = 'exp_txt1';
  static const String exp_label2 = 'exp_label2';
  static const String exp_txt2 = 'exp_txt2';
  static const String exp_label3 = 'exp_label3';
  static const String exp_txt3 = 'exp_txt3';
  static const String exp_label4 = 'exp_label4';
  static const String exp_txt4 = 'exp_txt4';

  static const String map_title = 'map_title';
  static const String map_snippet = 'map_snippet';

  static const Map<String, dynamic> EN = {
    title: 'Curriculum Vitae',
    personal_info: 'Personal Info.',
    studies: 'Studies',
    experience: 'Experiences',
    skills_cerifs: 'Skills',
    portfolio: 'Portfolio',
    adress: 'adress',
    send_mail: 'Send me e-mail',
    error_url: 'Cannot launch this url',
    skills_title: "My skills",
    map_title: 'My professional adress',
    map_snippet: 'CNAM, May 2, 1966 Street, Medenine',
    //Pages titles
    pers_info_title: 'My personal details',
    stud_title: 'My studies',
    exp_title: 'My experiences',
    // Labels and textes for studies
    stud_label1: '2023-2025 : ',
    stud_txt1:
        'Professional Master in Information Systems and Network Development - ISET Sfax',
    stud_label2: '2020-2023 : ',
    stud_txt2:
        "Bachelor's degree in information systems development (Obtained in June 2023): Honors: Good - ISET Tataouine",
    stud_label3: '1999-2003 : ',
    stud_txt3:
        "Diploma of Higher Technological Studies; Higher Technician in IT (obtained in January 2003): Honors: Fairly good, specialty Industrial IT - ISET Nabeul",
    stud_label4: '1992-1999 : ',
    stud_txt4:
        "Baccalaureate technical section (obtained in June 1999): Honors: Fairly good - Ben Guerdane secondary school",
    stud_label5: '1986 - 1992',
    stud_txt5: "primary studies at Hassi-Ennour primary school - Ben Guerdane",
    // Labels and textes for prof. experience
    exp_label1: "Since June 2009",
    exp_txt1:
        "Assistant engineer at the national health insurance fund(CNAM): Maintains computers at the regional center in Médenine and the local center in Ben Guerdane and technical coordinator with the IT department of the CNAM.",
    exp_label2: "Since June 2007 until May 2009",
    exp_txt2:
        "Computer trainer within the general association for the physically disabled, Médenine section",
    exp_label3: "Since June 2004 until June 2007",
    exp_txt3:
        "Manager of an IT service office: hard and soft maintenance and all office services",
    exp_label4: "Since September 2003 until June 2004",
    exp_txt4:
        "Computer trainer at the Medenine Professional Training and Apprenticeship Center",
  };
  static const Map<String, dynamic> FR = {
    title: 'Curriculum Vitae',
    personal_info: 'Info. personnel',
    studies: 'Etudes',
    experience: 'Expériences',
    skills_cerifs: 'Compétences',
    portfolio: 'Portfolio',
    adress: 'Adresse',
    send_mail: 'Envoyez moi un mail',
    error_url: 'Impossible d\'ouvrir l\'url',
    map_title: 'Mon adresse professionnelle',
    map_snippet: 'CNAM Av 02 Mai 1966, Médenine',
    skills_title: "Mes compétences",

    //Pages titles
    pers_info_title: 'Mes informations personnelles',
    stud_title: 'Mes études',
    exp_title: 'Mes expériences',
    // Labels and textes for studies
    stud_label1: '2023-2025 : ',
    stud_txt1:
        "Master professionnel en développement des systèmes d'informations et réseaux - ISET Sfax",
    stud_label2: '2020-2023 : ',
    stud_txt2:
        "Licence en développement des systèmes d'informations (Obtention en juin 2023) : Mention : Bien - ISET Tataouine",
    stud_label3: '1999-2003 : ',
    stud_txt3:
        'Diplôme des études technologiques supérieures ; Technicien supérieur en informatique (obtention en janvier 2003) : Mention : Assez bien - ISET Nabeul',
    stud_label4: '1992-1999 : ',
    stud_txt4:
        "Baccalauréat section technique (obtention en juin 1999) : Mention : Assez bien - lycée secondaire de Ben Guerdane",
    stud_label5: '1986 - 1992',
    stud_txt5:
        "études primaires à l'école primaire Hassi-Ennour -  Ben Guerdane",
    // Labels end textes for prof. experiences
    exp_label1: "Dès Juin 2009",
    exp_txt1:
        "Ingénieur adjoint à la caisse nationale d'assurance maladie : Entretient des ordinateurs du centre régional de Médenine et centre local de Ben Guerdane et coordinateur technique avec la direction informatique de la CNAM.",
    exp_label2: "Dès juin 2007 jusqu'au mai 2009",
    exp_txt2:
        "Formateur en informatique au sein de l'association générale des handicapés moteurs section de Médenine",
    exp_label3: "Dès juin 2004 jusqu'au juin 2007 ",
    exp_txt3:
        "Gérant d'un bureau de services informatique : maintenance hard et soft et tous services bureautiques",
    exp_label4: "Dès septembre 2003 jusqu'au juin 2004 ",
    exp_txt4:
        "Formateur en informatique au sein du Centre de Formation et Apprentissage Professionnel de Médenine",
  };

  static const Map<String, dynamic> AR = {
    title: 'السيرة الذاتية',
    personal_info: 'معطيات شخصية',
    studies: 'الدراسة',
    experience: 'الخبرات',
    skills_cerifs: 'المهارات',
    portfolio: 'معرض الأعمال',
    adress: 'الموفع',
    send_mail: 'راسلني',
    error_url: 'لا يمكن فتح الرابط',
    map_title: 'مقر العمل',
    map_snippet: 'ص.و.ت.م. شارع 02 ماي 1966 مدنين',
    skills_title: "مهاراتي",
    //Pages titles
    pers_info_title: 'معطياتي الشخصية',
    stud_title: 'دراستي',
    exp_title: 'خبراتي',
    // Labels and textes for studies
    stud_label1: '2025-2023 : ',
    stud_txt1:
        'الماحستير المهني في تطوير النظم الإعلامية و الشبكات بالمعهد العالي للدراسات التكنولوجية بصفاقس',
    stud_label2: '2020-2023 : ',
    stud_txt2:
        "الإجازة في تطوير نظم المعلومات (تم الحصول عليها في جوان 2023) بملاحظة حسن: المعهد العالي للدراسات التكنولوجية بتطاوين",
    stud_label3: '1999-2003 : ',
    stud_txt3:
        "شهادة الدراسات التكنولوجية العليا؛ تقني سامي في الإعلامية (تم الحصول عليها في جانفي 2003): بملاحظة: قريب من الحسن، تخصص الاعلامية الصناعية - المعهد العالي للتقنيات التكنولوجية نابل",
    stud_label4: '1992-1999 : ',
    stud_txt4:
        "باكالوريا تقنية بملاحظة قريب من الحسن (تم الحصول عليها في جوان 1999) - المعهد الثانوي ببنقردان",
    stud_label5: '1986 - 1992',
    stud_txt5: "الدراسة الابتدائية بالمدرسة الابتدائية حاسي النور - بنقردان",
    // Labels end textes for prof. experiences

    exp_label1: "منذ جوان 2009",
    exp_txt1:
        "مهندس مساعد بالصندوق الوطني للتأمين على المرض: مكلف بصيانة الحواسيب بالمركز الجهوي بمدنين والمركز المحلي بنقردان ومنسق تقني مع الإعلامية بالصندوق الوطني للتأمين على المرض.",
    exp_label2: "منذ جوان 2007 إلى ماي 2009",
    exp_txt2:
        "مكون في الإعلامية بالجمعية العامة للقاصرين عن الحركة العضوية فرع مدنين",
    exp_label3: "",
    exp_txt3:
        "مدير مكتب خدمات الإعلامية: صيانة الحواسيب وجميع الخدمات المكتبية",
    exp_label4: "منذ سبتمبر 2003 إلى جوان 2004",
    exp_txt4: "مكون إعلامية في مركز التكوين و التدريب المهني بمدنين",
  };
}

import 'package:flutter/material.dart';
import 'package:islami_hti/app_colors.dart';
import 'package:islami_hti/screens/sura_details/sura_details.dart';

class QuranTab extends StatelessWidget {
  QuranTab({Key? key}) : super(key: key);
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: Image.asset("assets/quran_logo.png")),
        SizedBox(
          height: 8,
        ),
        Divider(
          color: AppColors.primiaryColor,
          thickness: 3,
        ),
        Text(
          "Sura Name",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: AppColors.accentColor),
        ),
        Divider(
          color: AppColors.primiaryColor,
          thickness: 3,
        ),
        Expanded(
          flex: 7,
          child: ListView.builder(
              itemCount: suraNames.length,
              itemBuilder: (context, index) {
                return buildSuraName(context, suraNames[index], index);
              }),
        ),
      ],
    );
  }

  Widget buildSuraName(BuildContext context, String suraName, int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(
                suraName: suraName, fileName: "${index + 1}.txt"));
      },
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.accentColor,
            fontSize: 25),
      ),
    );
  }
}

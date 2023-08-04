import 'package:flutter/material.dart';
import 'package:islami_hti/app_colors.dart';
import 'package:islami_hti/screens/home/tabs/ahadeth_tab.dart';
import 'package:islami_hti/screens/home/tabs/quran.dart';
import 'package:islami_hti/screens/home/tabs/radio_tab.dart';
import 'package:islami_hti/screens/home/tabs/sebha_tab.dart';

class Home extends StatefulWidget {
  static const String routeName = "home" ;
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    AhadethTab(),
    RadioTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/home_bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text("Islami", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.accentColor),),
        ),
        body: tabs[selectedTabIndex],
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: AppColors.primiaryColor),
          child: BottomNavigationBar(
            onTap: (index){
              selectedTabIndex = index;
              setState(() {});
            },
            currentIndex: selectedTabIndex,
            iconSize: 30,
            selectedItemColor: AppColors.accentColor,
            backgroundColor: Colors.red,
            showUnselectedLabels: false,
            showSelectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage("assets/ic__quran.png")
              ), label: "quran"),
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/ic_ahadeth.png")
              ),label: "Ahadeth"),
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/ic_sebha.png")
              ), label: "Sebha"),
              BottomNavigationBarItem(icon: ImageIcon(
                  AssetImage("assets/ic_radio.png")
              ), label: "Radio")
            ],
          ),
        ),
      ),
    );
  }
}

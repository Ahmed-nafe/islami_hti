import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../app_colors.dart';

class HadethDetails extends StatefulWidget {
  static String routeName = "hadeth_details";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String hadethContent = "";
  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context)!.settings.arguments as int;
    if(hadethContent.isEmpty) readFile(index);
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
        body:hadethContent.isEmpty?
          Center(child: CircularProgressIndicator()) :
           SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(hadethContent,
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 24,color: AppColors.accentColor),),
             ),
           ),
      ),
    );
  }

  void readFile(int index) async{
    hadethContent = await rootBundle.loadString("assets/files/ahadeth/h${index+1}.txt");
   setState(() {});
  }
}

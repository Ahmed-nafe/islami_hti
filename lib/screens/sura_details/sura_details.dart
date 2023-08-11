import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app_colors.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = "sura_details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if(suraLines.isEmpty) readFile(args.fileName);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/home_bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body:suraLines.isEmpty ?Center(child: CircularProgressIndicator()) :
        ListView.builder(
            itemCount: suraLines.length,
            itemBuilder: (context, index){
              return RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: AppColors.accentColor, fontSize: 20),
                    children: [
                      TextSpan(text: "${index+1}"),
                      TextSpan(text: suraLines[index])
                    ]
                  )
              );
            }
        ),
      ),
    );
  }

  void readFile(String fileName) async{
   String suraContent = await rootBundle.loadString("assets/files/$fileName");
   suraLines = suraContent.split("\n");
   setState(() {});
  }
}

class SuraDetailsArgs{
  String suraName;
  String fileName;
  SuraDetailsArgs({required this.suraName,required this.fileName});
}

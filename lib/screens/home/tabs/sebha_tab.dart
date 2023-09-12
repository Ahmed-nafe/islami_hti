import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  SebhaTab ({Key? Key}) : super(key : Key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> zekr =[
    'سبحان الله ',
    'الحمد لله ',
    'الله اكبر '
  ];

  double rotate = 0.0 ;

  int count = 0 ;

  int index = 0 ;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: w * 0.5,
            height: h * 0.35,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset('assets/head seb7a dark.png',
                    width: w * 0.2, height: h * 0.1),
                Positioned(
                    height: h * 0.4,
                    child: Transform.rotate(
                      angle: rotate,
                      child: Image.asset(
                        'assets/body seb7a dark.png',
                        width: w * 0.5,
                        height: h * 0.3,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.07,
          ),

          Text(
            'عدد التسبيحات ',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 25),
          ),

          SizedBox(height: h*0.03,),

          Container(
            padding: EdgeInsets.all(w*0.07),
            decoration: BoxDecoration(
              color:Color(0xb5b7935f),borderRadius: BorderRadius.circular(30)),
            child:
          Text(
            '$count',
            style:
            Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 25),
          ) ,),

           SizedBox(height: h*
               0.04,),

           InkWell(
             onTap: (){zekrCounter();},
             child: Container(
              padding: EdgeInsets.all(w*0.02 ),
              decoration: BoxDecoration(
                  color:Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(18)),
              child:
              Text(
                zekr[index],
                style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 25),
              ) ,),
           )
        ],
      ),
    );

  }

zekrCounter(){
    rotate+=0.1;
count++;
if (count==33){
  index++;
  count=0;
}

if(index>2){
  index=0;
}

  setState((){});
  }
}

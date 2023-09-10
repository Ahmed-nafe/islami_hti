import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;

    return Container(
      height: h*0.5,
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/ic_sebha.png' ,color: Colors.red,),


        ],
      ),
    );
  }
}

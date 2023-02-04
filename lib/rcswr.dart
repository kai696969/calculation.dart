import 'package:fyp_v1/rcdescription.dart';
import 'package:flutter/material.dart';
import 'package:fyp_v1/variablesvalue.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/variables.dart';

class rcswr extends StatelessWidget {
  final variables = Variables();

  rcswr({
   required j , required beta, required zPosition, required SWR, required rcUsingSwr1, required thetaRc, required thetaRo, required swrValue, required thetaRo1, required swrValue1, required thetaRo2,
    required j2betaZpos, required j2betaZpos1, required  rcvalue1,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("{${"Reflection${r'\ \,'}Coefficient"}}${r'\ \,'}${r'\Gamma_L '} " , textStyle:  TextStyle(fontSize: 23 , color: Colors.black , fontWeight: FontWeight.bold) ,),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.only(left: 30.0, right: 30.0 , top: 30.0),
            child: Container(
              height: 5000,
              width: 500,
              child: Column(
                children: [
                  getResult2(variables),
                  ExpansionTile(
                    title: Text('More' , style: TextStyle(fontSize: 25),),
                    backgroundColor: Colors.grey[200],
                    collapsedBackgroundColor: Colors.yellow[300],
                    children: [
                      getDescription2(variables),
                    ],
                  ),],
              ),
            ),
          ),
        ),
      ),
    );
  }

}








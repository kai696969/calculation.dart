import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/description.dart';
import 'package:fyp_v1/variables.dart';


class iZ extends StatelessWidget {
  final variables = Variables();

  iZ({required j , required imaginaryZL , required realZL ,
    required realZo , required imaginaryZo , required rcvalue1, required zovalue1,
    required zovalue , required zlvalue , required rcbtm , required rctop ,required rcbtm1 , required rctop1 ,
    required beta , required zPosition , required SWR , required thetaRc,required thetaRo,required swrValue
    ,required thetaRo1, required swrValue1 , required thetaRo2 , required j2betaZpos1 , required j2betaZpos
    ,required rcAtz , required rcAtz1, required zInusingRcz1 , required zInusingRcz , required zInusingRczTop,
    required zInusingRczBtm, required zInusingRczTop1, required zInusingRczBtm1, required Zg , required Vg,
    required Vin , required Vin1 , required voplus , required voplus1, required vominus , required vominus1,
    required vatzvaluee , required vatzvaluee1 , required iatzvalue , required iatzvalue1 , required vatzvalue , required vatzvalue1
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("${r'\ I(Z)'}" , textStyle:  TextStyle(fontSize: 28  , color: Colors.black ) ,),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
    body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
    padding:  EdgeInsets.only(left: 00.0, right: 00.0 , top: 00.0),
    child:InteractiveViewer(
    boundaryMargin: EdgeInsets.all(15.0),
    minScale: 0.1,
    maxScale: 2.0,
    panEnabled: true,
    scaleEnabled: true,
    onInteractionEnd: (details) {
    // do something when interaction ends, such as update a state variable
    },
    child: Padding(
    padding:  EdgeInsets.only(left: 10.0, right: 10.0 , top: 30.0),
    child: Container(
    child:  Column(
                children: [
                  Text("Result:  (${variables.iatzvalue1.re.toStringAsPrecision(3)}) + (${variables.iatzvalue1.im.toStringAsPrecision(3)})j \n   "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                  ExpansionTile(
                      title: Text('More',style:TextStyle(color: Colors.black ),),
                      backgroundColor: Colors.grey[200],
                      collapsedBackgroundColor: Colors.yellow[300],
                      children: [
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("I(Z) =${r'\frac {1}{Z_o}'}V(Z)" , textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\quad'}${r'\quad \;'}=${r'\frac {1}{Z_o}'}(${r'\ V_o ^ {+}{e^{-j \beta z}[{1- \Gamma_L e^{2j \beta z}]}}'})" , textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("V(Z)= (${variables.vatzvaluee1.re.toStringAsPrecision(3)}) + (${variables.vatzvaluee1.im.toStringAsPrecision(3)})j",  textStyle: TextStyle(fontSize: 25 , color: Colors.black , ),)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                            child: Math.tex("${r'\ V_o ^ {+}'}= (${variables.voplus1.re.toStringAsPrecision(3)}) + (${variables.voplus1.im.toStringAsPrecision(3)})j",  textStyle: TextStyle(fontSize: 25 , color: Colors.black , ),)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("Z_o= (${variables.zovalue1.re.toStringAsPrecision(3)}) + (${variables.zovalue1.im.toStringAsPrecision(3)})j",  textStyle: TextStyle(fontSize: 25 , color: Colors.black , ),)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\ e ^ {-j \beta z} '} = (${variables.jbetaZpos1.re.toStringAsPrecision(3)}) + (${variables.jbetaZpos1.im.toStringAsPrecision(3)})j",  textStyle: TextStyle(fontSize: 25 , color: Colors.black , ),)),),
                        ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\ 1- \Gamma_L e^{2j \beta z} '} = (${variables.zInusingRczBtm1.re.toStringAsPrecision(3)}) + (${variables.zInusingRczBtm1.im.toStringAsPrecision(3)})j",  textStyle: TextStyle(fontSize: 25 , color: Colors.black , ),)),),
                        ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
                            children: [
                              ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\frac {V(Z)}{Z_o} '}" , textStyle:  TextStyle(fontSize: 25)),),),
                              rcMethod1Step2(variables.vatzvaluee1 , variables.zovalue1, variables.iatzvalue1),

                            ]

                        ),
                      ]
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}




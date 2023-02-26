import 'dart:math';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/polartorect.dart';
import 'package:fyp_v1/recttopolar.dart';
import 'package:fyp_v1/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget getDescription1(Variables variables) {
  return Column(
    children:
    [
      ListTile( title: Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
      ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
      ListTile( title: Math.tex("${r'Z_L - Z_o= '}${variables.rctop1.re.toStringAsFixed(3)} - ${variables.rctop1.im.toStringAsFixed(3)}j " , textStyle:  TextStyle(fontSize: 25)),),
      ListTile( title: Math.tex("${r'Z_L + Z_o= '}${variables.rcbtm1.re.toStringAsFixed(3)} + ${variables.rcbtm1.im.toStringAsFixed(3)}j " , textStyle:  TextStyle(fontSize: 25)),),
      ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
      ListTile( title: Math.tex("${r'\Gamma_L = \frac{'}${variables.rctop1.re.toStringAsFixed(3)} - ${variables.rctop1.im.toStringAsFixed(3)}j${r'}{'}${variables.rcbtm1.re.toStringAsFixed(3)} + ${variables.rcbtm1.im.toStringAsFixed(3)}j${r'}'}", textStyle: TextStyle(fontSize: 25) ,)),
      ListTile( title: Math.tex(" ${r'\quad \;='} ${ variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j", textStyle: TextStyle(fontSize: 25) ,)),
      getConversion(variables.rctop1.re , variables.rctop1.im , variables.rcbtm1.re ,variables.rcbtm1.im,variables.rctop1 , variables.rcbtm1)
    ],
  );





}

Widget getDescription2(Variables variables) {
  return Column(
    children:
    [
      ListTile( title: Math.tex("{${"|"}}${r'\Gamma_L'}{${"|"}}${r'\angle'}${r' \theta_o '} = ${r'\frac{SWR-1}{SWR+1}'}${r'\angle'}${r' \theta_o '}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
      ListTile( title: Math.tex("${r' \theta_ '}${r' \Gamma '} = ${r' \theta_o '}{+2}${r'\beta'}{z}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
      ListTile( title: Math.tex("${r' \theta_ '}${r' \Gamma '} = {0,-2}${r'\pi'}{,-4}${r'\pi'}{,.....}${r'\;'}{at}${r'\ z_'}{max}  ", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
      ListTile( title: Math.tex("${r' \theta_ '}${r' \Gamma '} = ${r'\pi'}{,-}${r'\pi'}{,-3}${r'\pi'}{,.....}${r'\;'}{at}${r'\ z_'}{min}  ", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
      ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
      ListTile( title: Math.tex("{${"SWR - 1 = "}}${r'\ \,'}${variables.SWR - 1} " , textStyle:  TextStyle(fontSize: 25)),),
      ListTile( title: Math.tex("{${"SWR + 1 = "}}${r'\ \,'}${variables.SWR + 1} " , textStyle:  TextStyle(fontSize: 25)),),
      ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
      ListTile( title: Math.tex("{${"|"}}${r'\Gamma_L'}{${"|"}}${r'\angle'}${r' \theta_o '} = |${r'\frac'}{${variables.SWR-1}}{${variables.SWR+1}}|${r'\angle'}${variables.thetaRo2}rad ", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ListTile( title: Math.tex("${r'\qquad \qquad = '}${variables.swrValue1.abs().toStringAsFixed(3)}${r'\angle'}${variables.thetaRo2}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
          children: [ListTile( title: Math.tex("${r' \theta_o '} = ${r' \theta_ '}${r' \Gamma '}{-2}${r'\beta'}{z} ", textStyle: TextStyle(fontSize: 25 ,) , )),
            ListTile( title: Math.tex("{=}${variables.thetaRc - 2*variables.beta*variables.zPosition}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),
          ]
      ),
      ListTile(title: Text.rich(TextSpan(text: 'Step 3:', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
      ListTile( title: Math.tex("${variables.swrValue1.abs().toStringAsFixed(3)}${r'\angle'}${variables.thetaRo2}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ListTile( title: Math.tex("{=} ${(variables.swrValue1.abs()*cos(variables.thetaRo2)).toStringAsFixed(3)} + ${(variables.swrValue1.abs()*sin(variables.thetaRo2)).toStringAsFixed(3)} j", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
          children: [
            getConversion1(variables.swrValue1.abs() , variables.thetaRo2)
          ]
      ),
    ],
  );
}

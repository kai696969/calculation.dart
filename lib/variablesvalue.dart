import 'dart:math';
import 'package:fyp_v1/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

Widget getResult1(Variables variables) {
  return Column(
    children: <Widget>[
    Text("Variables Values \n",style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline, ) ,  ),
  Math.tex("${r' \,Z_L '}=${variables.realZL.toStringAsFixed(3)} + ${variables.imaginaryZL.toStringAsFixed(3)}j," , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) , ),
  Text("" ,  style: TextStyle(fontSize: 25) , ),
  Math.tex("${r' \,Z_o '}=${variables.realZo.toStringAsFixed(3)} + ${variables.imaginaryZo.toStringAsFixed(3)}j, " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
  Text(" \n Result:  ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j \n  "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
  Math.tex("= ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsFixed(3)}rad${r'\; (radian\;mode)'}" , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
  Text("" ,  style: TextStyle(fontSize: 25) , ),
  Math.tex(" = ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${(variables.rcvalue1.argument* (180/pi)).toStringAsFixed(3)}${r'\degree'}${r'\; (degree\;mode)'}" , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
  Text("" ,  style: TextStyle(fontSize: 25) , )
      ,],
  );
}

Widget getResult2(Variables variables) {
  return Column(
    children: <Widget>[
      Math.tex("${r' \,\beta= '}${variables.beta}${r'\; '},${r'\; '}Z${r'\, '}position = ${variables.zPosition}m " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex("${r' \,\theta_o = '}${variables.thetaRo}${r'\, '}rad${r'\; '},${r'\; '}${r' \theta_ '}${r' \Gamma '}=${variables.thetaRc}${r'\, '}rad " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text(" \n Result:  ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j \n  "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
      Math.tex("= ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsFixed(3)}rad${r'\; (radian\;mode)'}" , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex(" = ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${(variables.rcvalue1.argument* (180/pi)).toStringAsFixed(3)}${r'\degree'}${r'\; (degree\;mode)'}" , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , )
      ,],
  );
}

Widget getResultboth(Variables variables) {
  return Column(
    children: <Widget>[
      Text("Variables Values \n",style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline, ) ,  ),
      Math.tex("${r' \,Z_L '}=${variables.realZL.toStringAsFixed(3)} + ${variables.imaginaryZL.toStringAsFixed(3)}j," , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) , ),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex("${r' \,Z_o '}=${variables.realZo.toStringAsFixed(3)} + ${variables.imaginaryZo.toStringAsFixed(3)}j, " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex("${r' \,\beta= '}${variables.beta}${r'\; '},${r'\; '}Z${r'\, '}position = ${variables.zPosition}m " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex("${r' \,\theta_o = '}${variables.thetaRo}${r'\, '}rad${r'\; '},${r'\; '}${r' \theta_ '}${r' \Gamma '}=${variables.thetaRc}${r'\, '}rad " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text(" \n Result:  ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j \n  "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
      Math.tex("= ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsFixed(3)}rad${r'\; (radian\;mode)'}" , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex(" = ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${(variables.rcvalue1.argument* (180/pi)).toStringAsFixed(3)}${r'\degree'}${r'\; (degree\;mode)'}" , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , )
      ,],
  );
}


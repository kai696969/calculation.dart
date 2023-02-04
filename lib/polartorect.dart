import 'dart:math';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getConversion1(var g, var h ) {
  return Column(
      children: [ ListTile( title: Math.tex("${g.abs().toStringAsFixed(3)}${r'\angle'}${h}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),
        ListTile( title: Math.tex("{=}${g.abs().toStringAsFixed(3)}cos(${h})+${g.abs()}sin(${h})j", textStyle: TextStyle(fontSize: 25 ,) ,  )),
        ListTile( title: Math.tex("{=} ${(g.abs()*cos(h)).toStringAsFixed(3)} + ${(g.abs()*sin(h)).toStringAsFixed(3)} j", textStyle: TextStyle(fontSize: 25 ,) ,  )),

      ]
  );

}

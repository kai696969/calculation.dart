import 'dart:math';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getConversion(var a, var b , var c , var d , var e , var f) {
  return Column(
    children: [
                    ListTile( title: Math.tex("${"A+jB" }", textStyle: TextStyle(fontSize: 25) ,)),
                    ListTile( title: Math.tex(" ${'='} ${r'\sqrt{A^2 + B^2} \angle'} ${r'\tan^-1'}{(} ${r'\frac{B}{A}'}{)}", textStyle: TextStyle(fontSize: 25) ,)),
      // ListTile( title: Math.tex("${'=' }${e.module.toStringAsFixed(3)}${r'\angle'}${f.argument.toStringAsFixed(3)}rad", textStyle: TextStyle(fontSize: 25) ,)),
      // ListTile( title: Math.tex(" ${'='}${sqrt(c*c + d*d)}${r'\angle'}${atan(d/c)}", textStyle: TextStyle(fontSize: 25) ,)),
      // ListTile( title: Math.tex("${'=' }${e.module.toStringAsFixed(3)}${r'\angle'}${f.argument.toStringAsFixed(3)}rad", textStyle: TextStyle(fontSize: 25) ,)),

                  ]
          );

}

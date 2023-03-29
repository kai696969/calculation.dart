import 'dart:math';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget rcMethod1var(Variables variables) {
  return Column(
    children: <Widget>[
FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
    child:  Math.tex("${r' \,Z_L '}=${variables.realZL.toStringAsPrecision(3)} + ${variables.imaginaryZL.toStringAsPrecision(3)}j," , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) , ),),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
  FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
  child:
  Math.tex("${r' \,Z_o '}=${variables.realZo.toStringAsPrecision(3)} + ${variables.imaginaryZo.toStringAsPrecision(3)}j, " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),),

 ],
  );
}  // show the variable values for rc method 1

Widget rcMethod2var(Variables variables) {
  return Column(
    children: <Widget>[
  FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
    child:
    Math.tex("${r' \,\beta= '}${variables.beta}${r'\; '},${r'\; '}Z${r'\, '}position = ${variables.zPosition}m " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
  FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
  child:
  Math.tex("${r' \,\theta_o = '}${variables.thetaRo}${r'\, '}rad${r'\; '},${r'\; '}${r' \theta_ '}${r' \Gamma '}=${variables.thetaRc}${r'\, '}rad " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),),

      ],
  );
}  // show the variable values for rc method 2

Widget recttopolar(var a, var b) {
  return Column(
      children: [
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${"A+jB"}", textStyle: TextStyle(fontSize: 25) ,)),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" ${'='} ${r'\sqrt{A^2 + B^2} \angle'} ${r'\tan^{-1}'}{(} ${r'\frac{B}{A}'}{)}", textStyle: TextStyle(fontSize: 25) ,)),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("= ${r'\sqrt'}{(${a.toStringAsPrecision(3)})^2 + (${b.toStringAsPrecision(3)})^2}${r'\angle \tan^{-1}'}${r'\frac'}{${b.toStringAsPrecision(3)}}{${a.toStringAsPrecision(3)}} ", textStyle: TextStyle(fontSize: 25) ,)),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("= ${sqrt(a*a + b*b).toStringAsPrecision(3)}${r'\angle'}${atan(b/a).toStringAsPrecision(3)} ", textStyle: TextStyle(fontSize: 25) ,)),),
      ]
  );

}

Widget polartorect(var a, var b ) {
  return Column(
      children: [
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("A${r'\angle B'}", textStyle: TextStyle(fontSize: 25) ,)),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("{=}${r'\;'}Acos(B)+Asin(B)j", textStyle: TextStyle(fontSize: 25 ,) ,  )),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("{=}${r'\;'}${a.toStringAsPrecision(3)}cos(${b.toStringAsPrecision(3)})+${a.toStringAsPrecision(3)}sin(${b.toStringAsPrecision(3)})j", textStyle: TextStyle(fontSize: 25 ,) ,  )),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("{=}${r'\;'} ${(a*cos(b)).toStringAsPrecision(3)} + ${(a*sin(b)).toStringAsPrecision(3)} j", textStyle: TextStyle(fontSize: 25 ,) ,  )),),
      ]
  );
}

Widget ej2betazdesc(var a, var b ) {
  return Column(
      children: [
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("{e^{{j2}${ r'\beta '}{z}}}{${"= e ^{{j}(${(2*a*b).toStringAsPrecision(3)})}"}} " , textStyle:  TextStyle(fontSize: 25)),),),
        ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
            children: [
              ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text("z= $a m" , style: TextStyle(color: Colors.black , fontSize: 25, ))),),
              ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\beta ='}${b}" , textStyle:  TextStyle(fontSize: 25)),),),
            ]
        ),
      ]
  );
}

String ej2betaz(var a, var b) {
  return  'e^{j(${(2*a*b).toStringAsPrecision(3)})}';
}

Widget ejbetazdesc(var a, var b ) {
  return Column(
      children: [
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
          child:  Math.tex("{e^{{j}${ r'\beta '}{z}}}{${"= e ^{{j}(${(a*b).toStringAsPrecision(3)})}"}} " , textStyle:  TextStyle(fontSize: 25)),),),
        ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
            children: [
              ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                  child:  Text("z= $a m" , style: TextStyle(color: Colors.black , fontSize: 25, ))),),
              ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                child:  Math.tex("${r'\beta ='}${b}" , textStyle:  TextStyle(fontSize: 25)),),),
            ]
        ),
      ]
  );
}

String ejbetaz(var a, var b) {
  return  'e^{j${(a*b).toStringAsPrecision(3)}}';
}

Widget jztanbetazdesc(var a, var b , var c  ) {
  return Column(
      children: [
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" = (j)*($b) * (${c.toStringAsPrecision(3)})rad ", textStyle: TextStyle(fontSize: 25 ,) , )),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" = ${(b * a * c).re.toStringAsPrecision(3)} +${(b * a * c).im.toStringAsPrecision(3)}j",textStyle: TextStyle(fontSize: 25 ,) ,  )),),
        ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" ${r'\ [ \; \; i=j,\;\; j*j = -1\;\; ]'} ", textStyle: TextStyle(fontSize: 23 , color: Colors.red) , )),),
      ]
  );
}  // jZotanp use for zin method 1 step 2

Widget rczMethod(Variables variables) {
  return Column(
    children: [
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\Gamma_L'}{(z)} = ${r'\Gamma_L *'}e^{{j2}${ r'\beta '}z}",  textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\Gamma_L= '}{ ${variables.rcvalue1.re.toStringAsPrecision(3)} + ${variables.rcvalue1.im.toStringAsPrecision(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),),
      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
      ej2betazdesc(variables.zPosition , variables.beta),
      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,),
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\Gamma_L'}({${variables.zPosition}}) ", textStyle: TextStyle(fontSize: 25) ,)),),
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("=({${variables.rcvalue1.re.toStringAsPrecision(3)} + ${variables.rcvalue1.im.toStringAsPrecision(3)}j)} *{${ej2betaz(variables.zPosition , variables.beta)}} ", textStyle: TextStyle(fontSize: 25) ,)),),
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("= {${variables.rcAtz1.re.toStringAsPrecision(3)} + ${variables.rcAtz1.im.toStringAsPrecision(3)}j}", textStyle: TextStyle(fontSize: 25) ,)),),
      ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
          children: [
            ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("{${"e ^{{j}(${(2*variables.beta*variables.zPosition).toStringAsPrecision(3)})}"}}${"="}${variables.j2betaZpos1.re.toStringAsPrecision(3)} + ${variables.j2betaZpos1.im.toStringAsPrecision(3)}j" , textStyle:  TextStyle(fontSize: 25)),),),
            polartorect(1 , 2*variables.zPosition*variables.beta )
          ]
      ),
    ],
  );
}   // all 3 rcz desc are the same because we only show final rc value

Widget zInAllinputs (Variables variables)
{
  return Column(
    children: [ExpansionTile(
  title: Text('More',style:TextStyle(color: Colors.black ),),
  backgroundColor: Colors.grey[200],
  collapsedBackgroundColor: Colors.blue[100],
  children: [
  ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_'}{in}(-${r'\ell'}) = ${r'\frac{Z_L + jZ_otan(\beta \ell)}{Z_o + jZ_Ltan(\beta \ell)}'}${r' Z_o '}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
  ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r' tan(\beta \ell) '} = ${variables.tanbetaz1.toStringAsPrecision(3)}rad ", textStyle: TextStyle(fontSize: 25 ,) , )),),
ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
children: [
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\ell = -Z ='}${-variables.zPosition} m", textStyle: TextStyle(fontSize: 25 ,) ,)),),
]
),
ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_L + jZ_otan(\beta \ell)'}",textStyle: TextStyle(fontSize: 25 ,) ,  )),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("= ${(variables.zIntop1).re.toStringAsPrecision(3)}+${(variables.zIntop1).im.toStringAsPrecision(3)}j",textStyle: TextStyle(fontSize: 25 ,) ,  )),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_o + jZ_Ltan(\beta \ell)'}",textStyle: TextStyle(fontSize: 25 ,) ,  )),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("= ${(variables.zInbtm1).re.toStringAsPrecision(3)}+${(variables.zInbtm1).im.toStringAsPrecision(3)}j",textStyle: TextStyle(fontSize: 25 ,) ,  )),),
ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
children: [
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("j${r' Z_otan(\beta \ell)'} ", textStyle: TextStyle(fontSize: 22 ,) , )),),
jztanbetazdesc(variables.j, variables.zovalue1 , variables.tanbetaz1 ),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("j${r' Z_Ltan(\beta \ell)'} ", textStyle: TextStyle(fontSize: 22 ,) , )),),
jztanbetazdesc(variables.j, variables.zlvalue1 , variables.tanbetaz1 ),
]
),
ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline),),),),),
zInMethodStep2(variables.zIntop1,variables.zInbtm1, variables.zovalue1 , variables.zIn1),
],
),
ExpansionTile(
title: Text('More',style:TextStyle(color: Colors.black ),),
backgroundColor: Colors.grey[200],
collapsedBackgroundColor: Colors.yellow[100],
children: [
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\Z_'}{in}(z) = ${r'\frac{1+ \Gamma_L e^{2j \beta z}}{1- \Gamma_L e^{2j \beta z}}'}${r'\ Z_o'}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("1+${r'\Gamma_L e^{2j \beta z}= '}{ ${variables.zInusingRczTop1.re.toStringAsPrecision(3)} + ${variables.zInusingRczTop1.im.toStringAsPrecision(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),),
ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("1-${r'\Gamma_L e^{2j \beta z}= '}{ ${variables.zInusingRczBtm1.re.toStringAsPrecision(3)} + ${variables.zInusingRczBtm1.im.toStringAsPrecision(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),),
ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
Text("\n"),
zInMethodStep2(variables.zInusingRczTop1,variables.zInusingRczBtm1, variables.zovalue1 , variables.zInusingRcz1),
],
  ),
    ],
  );


}

Widget zInMethodStep2 (var a , var b , var c , var d)  // a/b * c function
{
  return Column(
    children: [
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
          child:  Math.tex("${r'\frac'}{${(a).re.toStringAsPrecision(3)}+${(a).im.toStringAsPrecision(3)}j}{${(b).re.toStringAsPrecision(3)}+${(b).im.toStringAsPrecision(3)}j}* ${c}", textStyle: TextStyle(fontSize: 25 ,) ,  )),),

      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
          child:  Math.tex("= ${r'\frac'}{${(a).module.toStringAsPrecision(3)}${r'\angle'}${(a).argument.toStringAsPrecision(3)}}{${(b).module.toStringAsPrecision(3)}${r'\angle'}${(b).argument.toStringAsPrecision(3)}}* ${c.module.toStringAsPrecision(3)}${r'\angle'}${c.argument.toStringAsPrecision(3)}", textStyle: TextStyle(fontSize: 25 ,) ,  )),),

      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
          child:  Math.tex("=${d.module.toStringAsPrecision(3)}${r'\angle'}${d.argument.toStringAsPrecision(3)}",textStyle: TextStyle(fontSize: 25 ,) ,  )),),
      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
          children: [
            recttopolar(a.re , a.im),
            recttopolar(b.re , b.im)
          ]
      ),
    ],
  );

}

Widget rcMethod1Step2 (var a , var b , var c )    // a/b fraction function
{
  return Column(
    children: [
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
          child:  Math.tex("${r' =\;'}${r' \frac{'}${a.re.toStringAsPrecision(3)} + ${a.im.toStringAsPrecision(3)}j${r'}{'}${b.re.toStringAsPrecision(3)} + ${b.im.toStringAsPrecision(3)}j${r'}'}", textStyle: TextStyle(fontSize: 25) ,)),),
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
        child:  Math.tex("${r' =\;'}${r'\frac'}{${a.module.toStringAsPrecision(3)}${r'\angle'}${a.argument.toStringAsPrecision(3)}rad}{${b.module.toStringAsPrecision(3)}${r'\angle'}${b.argument.toStringAsPrecision(3)}rad}", textStyle: TextStyle(fontSize: 25),),),),
      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
        child:  Math.tex("${r' =\;'}${c.module.toStringAsPrecision(3)}${r'\angle'}${c.argument.toStringAsPrecision(3)}  " , textStyle:  TextStyle(fontSize: 25)),),),
      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
          children: [
            recttopolar(a.re , a.im),
            recttopolar(b.re ,b.im),
          ]
      ),
    ],
  );

}


// String jztanbetaz(var a, var b, var c, var d) {
//   return '${(b * a * tan(c * d)).re.toStringAsPrecision(3)} +${(b * a * tan(c * d)).im.toStringAsPrecision(3)}j ';
// }
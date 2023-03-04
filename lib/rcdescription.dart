import 'dart:math';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget rcMethod1var(Variables variables) {
  return Column(
    children: <Widget>[
      Text("Variables Values \n",style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline, ) ,  ),
      Math.tex("${r' \,Z_L '}=${variables.realZL.toStringAsFixed(3)} + ${variables.imaginaryZL.toStringAsFixed(3)}j," , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) , ),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex("${r' \,Z_o '}=${variables.realZo.toStringAsFixed(3)} + ${variables.imaginaryZo.toStringAsFixed(3)}j, " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),

 ],
  );
}

Widget rcMethod2var(Variables variables) {
  return Column(
    children: <Widget>[
      Text("Variables Values \n",style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline, ) ,  ),
      Math.tex("${r' \,\beta= '}${variables.beta}${r'\; '},${r'\; '}Z${r'\, '}position = ${variables.zPosition}m " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
      Text("" ,  style: TextStyle(fontSize: 25) , ),
      Math.tex("${r' \,\theta_o = '}${variables.thetaRo}${r'\, '}rad${r'\; '},${r'\; '}${r' \theta_ '}${r' \Gamma '}=${variables.thetaRc}${r'\, '}rad " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),

      ],
  );
}

Widget rcMethod12var(Variables variables) {
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

     ],
  );
}

Widget recttopolar(var a, var b) {
  return Column(
      children: [
        ListTile( title: Math.tex("${"A+jB"}", textStyle: TextStyle(fontSize: 25) ,)),
        ListTile( title: Math.tex(" ${'='} ${r'\sqrt{A^2 + B^2} \angle'} ${r'\tan^{-1}'}{(} ${r'\frac{B}{A}'}{)}", textStyle: TextStyle(fontSize: 25) ,)),
        ListTile( title: Math.tex("= ${r'\sqrt'}{(${a.toStringAsFixed(3)})^2 + (${b.toStringAsFixed(3)})^2}${r'\angle \tan^{-1}'}${r'\frac'}{${b.toStringAsFixed(3)}}{${a.toStringAsFixed(3)}} ", textStyle: TextStyle(fontSize: 25) ,)),
        ListTile( title: Math.tex("= ${sqrt(a*a + b*b).toStringAsFixed(3)}${r'\angle'}${atan(b/a).toStringAsFixed(3)} ", textStyle: TextStyle(fontSize: 25) ,)),
      ]
  );

}

Widget polartorect(var a, var b ) {
  return Column(
      children: [
        ListTile( title: Math.tex("A${r'\angle B'}", textStyle: TextStyle(fontSize: 25) ,)),
        ListTile( title: Math.tex("{=}${r'\;'}Acos(B)+Asin(B)j", textStyle: TextStyle(fontSize: 25 ,) ,  )),
        ListTile( title: Math.tex("{=}${r'\;'}${a.toStringAsFixed(3)}cos(${b.toStringAsFixed(3)})+${a.toStringAsFixed(3)}sin(${b.toStringAsFixed(3)})j", textStyle: TextStyle(fontSize: 25 ,) ,  )),
        ListTile( title: Math.tex("{=}${r'\;'} ${(a*cos(b)).toStringAsFixed(3)} + ${(a*sin(b)).toStringAsFixed(3)} j", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ]
  );
}

Widget ej2betazdesc(var a, var b ) {
  return Column(
      children: [
        ListTile( title: Math.tex("{e^{{j2}${ r'\beta '}{z}}}{${"= e ^{{j}(${(2*a*b).toStringAsFixed(3)})}"}} " , textStyle:  TextStyle(fontSize: 25)),),
        ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
            children: [
              ListTile(title: Text("z= $a m" , style: TextStyle(color: Colors.black , fontSize: 25, ))),
              ListTile( title: Math.tex("${r'\beta ='}${b}" , textStyle:  TextStyle(fontSize: 25)),),
            ]
        ),
      ]
  );
}

String ej2betaz(var a, var b) {
  return  'e^{j${(2*a*b).toStringAsFixed(3)}}';
}

Widget jztanbetazdesc(var a, var b , var c ,var d ) {
  return Column(
      children: [
        ListTile( title: Math.tex(" = (j)*(${b}) * (tan(${c}*${-d}))rad ", textStyle: TextStyle(fontSize: 25 ,) , )),
        ListTile( title: Math.tex(" = ${(b * a * tan(c * -d)).re.toStringAsFixed(3)} +${(b * a * tan(c * -d)).im.toStringAsFixed(3)}j",textStyle: TextStyle(fontSize: 25 ,) ,  )),
        ListTile( title: Math.tex(" ${r'\ [ \; \; i=j,\;\; j*j = -1\;\; ]'} ", textStyle: TextStyle(fontSize: 23 , color: Colors.red) , )),
      ]
  );
}

// String jztanbetaz(var a, var b, var c, var d) {
//   return '${(b * a * tan(c * d)).re.toStringAsFixed(3)} +${(b * a * tan(c * d)).im.toStringAsFixed(3)}j ';
// }


Widget rczMethod(Variables variables) {
  return Column(
    children: [
      ListTile( title: Math.tex("${r'\Gamma_L'}{(z)} = ${r'\Gamma_L *'}e^{{j2}${ r'\beta '}z}",  textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
      ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
      ListTile( title: Math.tex("${r'\Gamma_L= '}{ ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),
      ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
      ej2betazdesc(variables.zPosition , variables.beta),
      ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
      ListTile( title: Math.tex("${r'\Gamma_L'}({${variables.zPosition}}) ", textStyle: TextStyle(fontSize: 25) ,)),
      ListTile( title: Math.tex("=({${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j)} *{${ej2betaz(variables.zPosition , variables.beta)}} ", textStyle: TextStyle(fontSize: 25) ,)),
      ListTile( title: Math.tex("= {${variables.rcAtz1.re.toStringAsFixed(3)} + ${variables.rcAtz1.im.toStringAsFixed(3)}j}", textStyle: TextStyle(fontSize: 25) ,)),
      ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
          children: [
            ListTile( title: Math.tex("{${"e ^{{j}(${(2*variables.beta*variables.zPosition).toStringAsFixed(3)})}"}}${"="}${variables.j2betaZpos1.re.toStringAsFixed(3)} + ${variables.j2betaZpos1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 25)),),
            polartorect(1 , 2*variables.zPosition*variables.beta )
          ]
      ),
    ],
  );
}

Widget zInMethodStep2 (var a , var b , var c , var d)
{
  return Column(
    children: [
      ListTile( title: Math.tex("${r'\frac'}{${(a).re.toStringAsFixed(3)}+${(a).im.toStringAsFixed(3)}j}{${(b).re.toStringAsFixed(3)}+${(b).im.toStringAsFixed(3)}j}* ${c}", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ListTile( title: Math.tex(" ",textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ListTile( title: Math.tex("= ${r'\frac'}{${(a).module.toStringAsFixed(3)}${r'\angle'}${(a).argument.toStringAsFixed(3)}j}{${(b).module.toStringAsFixed(3)}${r'\angle'}${(b).argument.toStringAsFixed(3)}j}* ${c.module.toStringAsFixed(3)}${r'\angle'}${c.argument.toStringAsFixed(3)}", textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ListTile( title: Math.tex(" ",textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ListTile( title: Math.tex("=${d.module.toStringAsFixed(3)}${r'\angle'}${d.argument.toStringAsFixed(3)}",textStyle: TextStyle(fontSize: 25 ,) ,  )),
      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
      children: [
      recttopolar(a.re , a.im),
      recttopolar(b.re , b.im)
            ]
      ),
  ],
  );

}

Widget zInAllinputs (Variables variables)
{
  return Column(
    children: [ExpansionTile(
  title: Text('More',style:TextStyle(color: Colors.black ),),
  backgroundColor: Colors.grey[200],
  collapsedBackgroundColor: Colors.blue[100],
  children: [
  ListTile( title: Math.tex("${r'Z_'}{in}(-${r'\ell'}) = ${r'\frac{Z_L + jZ_otan(\beta \ell)}{Z_o + jZ_Ltan(\beta \ell)}'}${r' Z_o '}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
  ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
ListTile( title: Math.tex("${r' tan(\beta \ell) '} = ${variables.tanbetaz1.toStringAsFixed(3)}rad ", textStyle: TextStyle(fontSize: 25 ,) , )),
ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
children: [
ListTile( title: Math.tex("-${r'\ell = Z ='}${variables.zPosition} m", textStyle: TextStyle(fontSize: 25 ,) ,)),
]
),
ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
ListTile( title: Math.tex("${r'Z_L + jZ_otan(\beta \ell)'}",textStyle: TextStyle(fontSize: 25 ,) ,  )),
ListTile( title: Math.tex("= ${(variables.zIntop1).re.toStringAsFixed(3)}+${(variables.zIntop1).im.toStringAsFixed(3)}j",textStyle: TextStyle(fontSize: 25 ,) ,  )),
ListTile( title: Math.tex("${r'Z_o + jZ_Ltan(\beta \ell)'}",textStyle: TextStyle(fontSize: 25 ,) ,  )),
ListTile( title: Math.tex("= ${(variables.zInbtm1).re.toStringAsFixed(3)}+${(variables.zInbtm1).im.toStringAsFixed(3)}j",textStyle: TextStyle(fontSize: 25 ,) ,  )),
ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
children: [
ListTile( title: Math.tex("j${r' Z_otan(\beta \ell)'} ", textStyle: TextStyle(fontSize: 22 ,) , )),
jztanbetazdesc(variables.j, variables.zovalue1 , variables.beta ,variables.zPosition ),
ListTile( title: Math.tex("j${r' Z_Ltan(\beta \ell)'} ", textStyle: TextStyle(fontSize: 22 ,) , )),
jztanbetazdesc(variables.j, variables.zlvalue1 , variables.beta ,variables.zPosition ),
]
),
ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline),),),),
zInMethodStep2(variables.zIntop1,variables.zInbtm1, variables.zovalue1 , variables.zIn1),
],
),
ExpansionTile(
title: Text('More',style:TextStyle(color: Colors.black ),),
backgroundColor: Colors.grey[200],
collapsedBackgroundColor: Colors.yellow[100],
children: [
ListTile( title: Math.tex("${r'\Z_'}{in}(z) = ${r'\frac{1+ \Gamma_L e^{2j \beta z}}{1- \Gamma_L e^{2j \beta z}}'}${r'\ Z_o'}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
ListTile( title: Math.tex("1+${r'\Gamma_L e^{2j \beta z}= '}{ ${variables.zInusingRczTop1.re.toStringAsFixed(3)} + ${variables.zInusingRczTop1.im.toStringAsFixed(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),
ListTile( title: Math.tex("1-${r'\Gamma_L e^{2j \beta z}= '}{ ${variables.zInusingRczBtm1.re.toStringAsFixed(3)} + ${variables.zInusingRczBtm1.im.toStringAsFixed(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),
ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
Text("\n"),
zInMethodStep2(variables.zInusingRczTop1,variables.zInusingRczBtm1, variables.zovalue1 , variables.zInusingRcz1),
],
  ),
    ],
  );


}



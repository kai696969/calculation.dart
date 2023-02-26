import 'package:flutter/material.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/calculation.dart';
import 'package:fyp_v1/variables.dart';


class rczPage extends StatelessWidget {
  final variables = Variables();

  rczPage({
    required j, required imaginaryZL, required realZL, required realZo, required imaginaryZo, required rcvalue1,
    required zovalue, required zlvalue, required zovalue1, required zlvalue1, required rcbtm, required rctop,
    required rcbtm1, required rctop1, required beta, required zPosition, required SWR, required rcUsingSwr1, required thetaRc,
    required thetaRo, required swrValue, required thetaRo1, required swrValue1, required thetaRo2, required j2betaZpos,
    required j2betaZpos1, required rcAtz, required rcAtz1,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reflection Coefficient at $variables.zPosition m ',style:TextStyle(color: Colors.black ),),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: Container(
        child: Padding(
          padding:  EdgeInsets.only(left: 10.0, right: 10.0 , top: 30.0),
          child: SingleChildScrollView(
            child:  Column(
              children: [

                Text("Result:  ${variables.rcAtz1.re.toStringAsFixed(3)} + ${variables.rcAtz1.im.toStringAsFixed(3)}j \n   "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                Math.tex("= ${variables.rcAtz1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcAtz1.argument.toStringAsFixed(3)}rad${r'\; (radian\;mode)'} " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
                Text("" ,  style: TextStyle(fontSize: 25) , ),
                Math.tex("= ${variables.rcAtz1.module.toStringAsFixed(3)}${r'\angle'}${(variables.rcAtz1.argument*(180/pi)).toStringAsFixed(3)}${r'\degree'}${r'\; (degree\;mode)'} " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
                Text("" ,  style: TextStyle(fontSize: 25) , ),
                ExpansionTile(

                  title: Text('More',style:TextStyle(color: Colors.black ),),
                  backgroundColor: Colors.grey[200],
                  collapsedBackgroundColor: Colors.yellow[300],
                  children: [
                    ListTile( title: Math.tex("${r'\Gamma_L'}{(z)} = ${r'\Gamma_L *'}e^{{j2}${ r'\beta '}z}",  textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
                    ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Gamma_L= '}{ ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),

                    ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("{e^{{j2}${ r'\beta '}{z}}}{${"= e ^{{j}(${(2*variables.beta*variables.zPosition).toStringAsFixed(3)})}"}} " , textStyle:  TextStyle(fontSize: 25)),),
                    ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
                        children: [
                          ListTile(title: Text("z= $variables.zPosition m" , style: TextStyle(color: Colors.black , fontSize: 25, ))),
                          ListTile( title: Math.tex("${r'\beta ='}${variables.beta}" , textStyle:  TextStyle(fontSize: 25)),),
                        ]
                    ),

                    ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
                    ListTile( title: Math.tex("${r'\Gamma_L'}({${variables.zPosition}}) ", textStyle: TextStyle(fontSize: 25) ,)),
                    ListTile( title: Math.tex("=({${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j) *{${"e ^{{j}(${(2*variables.beta*variables.zPosition).toStringAsFixed(3)})}"}}} ", textStyle: TextStyle(fontSize: 25) ,)),
                    ListTile( title: Math.tex("= {${variables.rcAtz1.re.toStringAsFixed(3)} + ${variables.rcAtz1.im.toStringAsFixed(3)}j}", textStyle: TextStyle(fontSize: 25) ,)),
                    ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
                        children: [
                          ListTile( title: Math.tex("${r'\Gamma_L= '}{ ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j} " , textStyle:  TextStyle(fontSize: 25)),),
                          ListTile( title: Math.tex("{${"e ^{{j}(${(2*variables.beta*variables.zPosition).toStringAsFixed(3)})}"}}${"="}${variables.j2betaZpos1.re.toStringAsFixed(3)} + ${variables.j2betaZpos1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 25)),),
                          ExpansionTile(title: Text("Details ",style: TextStyle(fontSize: 20 ,color: Colors.blue)),
                              children: [
                                ListTile( title: Math.tex("{${"Ae ^{{j}${r'\theta'}}"}}" , textStyle:  TextStyle(fontSize: 25)),),
                                ListTile( title: Math.tex("${"="}${"A${r'\angle'}${r'\theta'}"}" , textStyle:  TextStyle(fontSize: 25)),),
                                ListTile( title: Math.tex("${"="}${"Acos${r'\theta'}+jAsin${r'\theta'}"}" , textStyle:  TextStyle(fontSize: 25)),),
                                ListTile( title: Math.tex("${"="}${variables.j2betaZpos1.re.toStringAsFixed(3)} + ${variables.j2betaZpos1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 25)),),
                                ListTile( title: Math.tex("${"A=1 , ${r'\theta ='}${(2*variables.beta*variables.zPosition).toStringAsFixed(3)}rad "}" , textStyle:  TextStyle(fontSize: 25)),),
                              ]
                          ),
                        ]
                    ),




                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}





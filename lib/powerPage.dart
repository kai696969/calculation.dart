import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/description.dart';
import 'package:fyp_v1/variables.dart';


class powerPage extends StatelessWidget {
  final variables = Variables();
  powerPage({required j , required imaginaryZL , required realZL ,
    required realZo , required imaginaryZo , required rcvalue1, required zovalue1,
    required zovalue , required zlvalue , required rcbtm , required rctop ,required rcbtm1 , required rctop1 ,
    required beta , required zPosition , required SWR , required thetaRc,required thetaRo,required swrValue
    ,required thetaRo1, required swrValue1 , required thetaRo2 , required j2betaZpos1 , required j2betaZpos
    ,required rcAtz , required rcAtz1, required zInusingRcz1 , required zInusingRcz , required zInusingRczTop,
    required zInusingRczBtm, required zInusingRczTop1, required zInusingRczBtm1, required Zg , required Vg,
    required power , required power1,     required powerr , required powerr1
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("${r'\ P_L'}" , textStyle:  TextStyle(fontSize: 28  , color: Colors.black ) ,),
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
                    Text("Result:  ${variables.power1.toStringAsPrecision(3)} \n   "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                    ExpansionTile(
                        title: Text('More',style:TextStyle(color: Colors.black ),),
                        backgroundColor: Colors.grey[200],
                        collapsedBackgroundColor: Colors.yellow[300],
                        children: [
                          ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                              child:Math.tex("${r'\! P_L= \frac{V_g ^{\;\,2}}{8Z_g}'}(1-|${r'\Gamma_L'}|^2)",  textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
                          ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                              child:Math.tex("${r'\! P_{av}= \frac{V_g ^{\;\,2}}{8Z_g} \;when \; Z_g = Z_o'}",  textStyle: TextStyle(fontSize: 20 , color: Colors.red , ) ,  )),),
                          ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                        ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                            child:  Math.tex("{${"|"}}${r'\Gamma_L'}{${"|"}}${r'\angle'}${r' \theta_o '}=${variables.rcvalue1.module.abs().toStringAsPrecision(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsPrecision(3)}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),),
                          ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                              child:Math.tex("${r'\! P_L= \frac{V_g ^{\;\,2}}{8Z_g}'}(1-|${r'\Gamma_L'}|^2)",  textStyle: TextStyle(fontSize: 25 , ) ,  )),),
                          ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                              child:Math.tex("${r'\quad \;\; '}=${r'\frac'}{${variables.Vg}^2}{8*${variables.Zg}}(1-${variables.rcvalue1.module.abs().toStringAsPrecision(3)}^2) ",  textStyle: TextStyle(fontSize: 25 , ) ,  )),),
                          ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                              child:Math.tex("${r'\quad \;\; '}=${variables.power1.toStringAsPrecision(3)}",  textStyle: TextStyle(fontSize: 25 , ) ,  )),)
                        ]
                    ),
                    // ExpansionTile(
                    //     title: Text('More',style:TextStyle(color: Colors.black ),),
                    //     backgroundColor: Colors.grey[200],
                    //     collapsedBackgroundColor: Colors.blue[300],
                    //     children: [
                    //       ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                    //           child:Math.tex("${r'\! P_L= \frac {1}{2}|\frac{V_g }{Z_g+ Z_{in}}|^2\;Re(Z_{in})'}",  textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
                    //       ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    //       ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                    //           child:Math.tex("${r'\! P_L= \frac {1}{2}|\frac{V_g }{Z_g+ Z_{in}}|^2\;Re(Z_{in})'}",  textStyle: TextStyle(fontSize: 25 , ) ,  )),),
                    //       ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                    //           child:Math.tex("${r'\quad \;\; '}=${r'\frac{1}{2}'}|${r'\frac'}{${variables.Vg}}{${variables.Zg} + ${variables.zInusingRcz1.re.toStringAsPrecision(3)}}|^2* ${variables.zInusingRcz1.re.toStringAsPrecision(3)} ",  textStyle: TextStyle(fontSize: 25 , ) ,  )),),
                    //       ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                    //           child:Math.tex("${r'\quad \;\; '}=${variables.powerr1.toStringAsPrecision(3)}",  textStyle: TextStyle(fontSize: 25 , ) ,  )),)
                    //     ]
                    // ),
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




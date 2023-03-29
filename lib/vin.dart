import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/description.dart';
import 'package:fyp_v1/variables.dart';


class vin extends StatelessWidget {
  final variables = Variables();

  vin({required j , required imaginaryZL , required realZL ,
    required realZo , required imaginaryZo , required rcvalue1,
    required zovalue , required zlvalue , required rcbtm , required rctop ,required rcbtm1 , required rctop1 ,
    required beta , required zPosition , required SWR , required thetaRc,required thetaRo,required swrValue
    ,required thetaRo1, required swrValue1 , required thetaRo2 , required j2betaZpos1 , required j2betaZpos
    ,required rcAtz , required rcAtz1, required zInusingRcz1 , required zInusingRcz , required zInusingRczTop,
    required zInusingRczBtm, required zInusingRczTop1, required zInusingRczBtm1, required Zg , required Vg,
    required Vin , required Vin1 , required voplus , required voplus1, required vominus , required vominus1,
    required vatzvalue , required vatzvalue1
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("${r'\ V_{in}'}" , textStyle:  TextStyle(fontSize: 28  , color: Colors.black ) ,),
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
                  Text("Result:  ${variables.Vin1.re.toStringAsPrecision(3)} + ${variables.Vin1.im.toStringAsPrecision(3)}j \n   "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                  Text("" ,  style: TextStyle(fontSize: 5) , ),
                  ExpansionTile(
                    title: Text('More',style:TextStyle(color: Colors.black ),),
                    backgroundColor: Colors.grey[200],
                    collapsedBackgroundColor: Colors.yellow[300],
                    children: [
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("V(-${r'\ell'}) = ${r'\ V_{in}'} = ${r'\frac {Z_{in}}{Z_{in}+ Z_g}'}${r'\ V_g'}",  textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\ Z_{in} ='}${variables.zInusingRcz1.re.toStringAsPrecision(3)} + ${variables.zInusingRcz1.im.toStringAsPrecision(3)}j", textStyle: TextStyle(fontSize: 25 , ),)),),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\ Z_{in} + Z_g ='}${variables.zInusingRcz1.re.toStringAsPrecision(3)} + ${variables.zInusingRcz1.im.toStringAsPrecision(3)}j + ${variables.Zg}", textStyle: TextStyle(fontSize: 22 , ),)),),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r'\quad'}${r'\quad'} ${r'\quad'}${r'\quad'}= ${(variables.zInusingRcz1.re + variables.Zg).toStringAsPrecision(3)} + ${variables.zInusingRcz1.im.toStringAsPrecision(3)}j ", textStyle: TextStyle(fontSize: 25 , ),)),),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      ListTile( title: Math.tex("${r'\frac {Z_{in}}{Z_{in}+ Z_g}'}  ", textStyle: TextStyle(fontSize: 25 , ),  )),

                      rcMethod1Step2(variables.zInusingRcz1 , variables.zInusingRcz1 + variables.Zg ,variables.ZgoverZinplusZg1),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      ListTile( title: Math.tex("${r'\frac {Z_{in}}{Z_{in}+ Z_g}V_g'}  ", textStyle: TextStyle(fontSize: 25 , ),  )),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r' =\;'}  ${variables.ZgoverZinplusZg1.re.toStringAsPrecision(3)} + ${variables.Vin1.im.toStringAsPrecision(3)}j* ${variables.Vg}", textStyle: TextStyle(fontSize: 25 , ),)),),
                      ListTile(title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child: Math.tex("${r' =\;'}  ${variables.Vin1.re.toStringAsPrecision(3)} + ${variables.Vin1.im.toStringAsPrecision(3)}j", textStyle: TextStyle(fontSize: 25 , ),)),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    ),),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/variables.dart';
import 'package:fyp_v1/description.dart';

class zInPageusingSWR extends StatelessWidget
{
  final variables = Variables();


zInPageusingSWR ({required j ,required realZL ,  required imaginaryZL ,required realZo ,
    required imaginaryZo  ,required zlvalue , required  zovalue ,required zlvalue1 , required  zovalue1 ,
    required rctop , required rcbtm ,required rctop1 , required rcbtm1,
    required beta , required zPosition, required zIn ,   required zIn1 ,required zIntop , required zInbtm , required zIntop1 , required zInbtm1 ,
    required tanbetaz , required tanbetaz1 ,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("{${"Input${r'\ \,'}Impedance"}}${r'\ \,'}${r'Z_'}{in}(-${r'\ell'}) " , textStyle:  TextStyle(fontSize: 22 , color: Colors.black , fontWeight: FontWeight.bold) ,),
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
                  Text("Variables Values \n",style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline, ) ,  ),
                  Math.tex("${r' \,Z_o '}=(${variables.realZo.toStringAsPrecision(3)}) + (${variables.imaginaryZo.toStringAsPrecision(3)})j, " , textStyle:  TextStyle(fontSize: 25 , color: Colors.black) ,),
                  Text("" ,  style: TextStyle(fontSize: 25) , ),
                  rcMethod2var(variables),
                  Text(" \n Result: (${variables.zInusingRcz1.re.toStringAsPrecision(3)}) + (${variables.zInusingRcz1.im.toStringAsPrecision(3)})j \n "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
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
                        child:  Math.tex("1+${r'\Gamma_L e^{2j \beta z}= '}{ (${variables.zInusingRczTop1.re.toStringAsPrecision(3)}) + (${variables.zInusingRczTop1.im.toStringAsPrecision(3)})j} " , textStyle:  TextStyle(fontSize: 25)),),),
                      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("1-${r'\Gamma_L e^{2j \beta z}= '}{ (${variables.zInusingRczBtm1.re.toStringAsPrecision(3)}) + (${variables.zInusingRczBtm1.im.toStringAsPrecision(3)})j} " , textStyle:  TextStyle(fontSize: 25)),),),
                      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      Text("\n"),
                      zInMethodStep2(variables.zInusingRczTop1,variables.zInusingRczBtm1, variables.zovalue1 , variables.zInusingRcz1),
                    ],
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





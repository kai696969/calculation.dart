import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/description.dart';
import 'package:fyp_v1/variables.dart';

class rcPage extends StatelessWidget {
   final variables = Variables();

  rcPage({
    required j, required imaginaryZL, required realZL, required realZo, required imaginaryZo, required rcvalue1,
    required zovalue, required zlvalue, required zovalue1, required zlvalue1, required rcbtm, required rctop,
    required rcbtm1, required rctop1, required beta, required zPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("{${"Reflection${r'\ \,'}Coefficient"}}${r'\ \,'}${r'\Gamma_L '} " , textStyle:  TextStyle(fontSize: 23 , color: Colors.black , fontWeight: FontWeight.bold) ,),
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
            padding:  EdgeInsets.only(left: 30.0, right: 30.0 , top: 30.0),
            child: Container(
              height: 5000,
              width: 500,
              child: Column(
                children: [
                  Text("Variables Values \n",style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline, ) ,  ),
                  rcMethod1var(variables),
                  Text(" \n Result:  ${variables.rcvalue1.re.toStringAsPrecision(3)} + ${variables.rcvalue1.im.toStringAsPrecision(3)}j \n  "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                  ExpansionTile(
                    title: Text('More' , style: TextStyle(fontSize: 25),),
                    backgroundColor: Colors.grey[200],
                    collapsedBackgroundColor: Colors.yellow[300],
                    children:[
                      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),),
                      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_L - Z_o= '}${variables.rctop1.re.toStringAsPrecision(3)} - ${variables.rctop1.im.toStringAsPrecision(3)}j " , textStyle:  TextStyle(fontSize: 25)),),),
                      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_L + Z_o= '}${variables.rcbtm1.re.toStringAsPrecision(3)} + ${variables.rcbtm1.im.toStringAsPrecision(3)}j " , textStyle:  TextStyle(fontSize: 25)),),),
                      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      rcMethod1Step2(variables.rctop1 , variables.rcbtm1 , variables.rcvalue1),
                      ListTile( title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),),
                      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\Gamma_L  \;='} ${variables.rcvalue1.module.toStringAsPrecision(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsPrecision(3)}  " , textStyle:  TextStyle(fontSize: 25)),),),
                      ListTile(  title:FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" ${r'\quad \;\;\;='} ${ variables.rcvalue1.re.toStringAsPrecision(3)} + ${variables.rcvalue1.im.toStringAsPrecision(3)}j", textStyle: TextStyle(fontSize: 25) ,)),),
                      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
                          children: [
                            polartorect(variables.rcvalue1.module , variables.rcvalue1.argument )
                          ]
                      ),
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








import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/rendering.dart';


class formulaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _formulaPageState();
  }
}

class _formulaPageState extends State<formulaPage>
{

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Formula Page'),
        centerTitle: true,
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
                children:
                [
                  Text("Symbols" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: Colors.blue),),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'\beta : Wave\;Number\;(m)'} ", textStyle:TextStyle(fontSize: 25 , ),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: Math.tex("${r'\beta = \frac{2\pi}{\lambda}'}", textStyle:TextStyle(fontSize: 25 ,  ),),),
                    ],),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'Z : \;Z\;position\;(m)'} ", textStyle:TextStyle(fontSize: 25 ,  ),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: Math.tex("${r'Z  :\,-\ell < Z < 0'}", textStyle:TextStyle(fontSize: 25 ,  ),),),
                    ],),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'\omega : Omega\;(Hz)'} ", textStyle:TextStyle(fontSize: 25 , ),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: Math.tex("${r'\omega : \;2\pi\!f'}", textStyle:TextStyle(fontSize: 25 ,  ),),),
                      ListTile(title: Math.tex("${r'\ f = Frequency\;in\;Hz'}", textStyle:TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold ),),),
                    ],),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'\lambda : \;Wavelength\;(m)'} ", textStyle:TextStyle(fontSize: 25 ,  ),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: Math.tex("${r'\lambda = \frac{2\pi}{\beta}'}", textStyle:TextStyle(fontSize: 25 ,  ),),),
                    ],),

                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'\!u_p: Phase\;Velocity\,(m/s)'} ", textStyle:TextStyle(fontSize: 25 ,  ),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: Math.tex("${r'\!u_p = f\lambda'} ", textStyle:TextStyle(fontSize: 25 ,  ),),),
                      ListTile(title: Math.tex("${r'\ f = Frequency\;in\;Hz'}", textStyle:TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold ),),),

                    ],),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'\theta_o : Phase\;Angle\;of\; \Gamma'} ", textStyle:TextStyle(fontSize: 25 ,  ),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: Math.tex(" ${r' \theta_o '}=${r' \theta_ '}${r' \Gamma '}{-2}${r'\beta'}{z}", textStyle:TextStyle(fontSize: 25 , ),),),
                    ],),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex(" ${r' \theta_ '}${r' \Gamma: Phase\;Angle\;of\; \Gamma(Z)'} ", textStyle:TextStyle(fontSize: 25 , ),),
                    backgroundColor: Colors.grey[200],

                    children:[
                      ListTile(title: Math.tex("${r' \theta_ '}${r' \Gamma '} = ${r' \theta_o '}{+2}${r'\beta'}{z}", textStyle:TextStyle(fontSize: 25 , ),),),
                      ListTile( title: Math.tex("${r' \theta_ '}${r' \Gamma '} = {0,-2}${r'\pi'}{,-4}${r'\pi'}{,.....}${r'\;'}{at}${r'\ z_'}{max}  ", textStyle: TextStyle(fontSize: 25 , ) ,  )),
                      ListTile( title: Math.tex("${r' \theta_ '}${r' \Gamma '} = ${r'\pi'}{,-}${r'\pi'}{,-3}${r'\pi'}{,.....}${r'\;'}{at}${r'\ z_'}{min}  ", textStyle: TextStyle(fontSize: 25 , ) ,  )),
                    ],),



                  SizedBox(height: 20),
                  Text("Equations" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, decoration: TextDecoration.underline,color: Colors.blue),),
                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("{${"Reflection${r'\ \,'}Coefficient"}}${r'\ \,'}${r'\Gamma_L '} " , textStyle:  TextStyle(fontSize: 23 ,  fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile( title: Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}", textStyle: TextStyle(fontSize: 25 ,) ,  )),
                      ListTile( title: Math.tex("", textStyle: TextStyle(fontSize: 20 , color: Colors.red) ,  )),
                      ListTile( title: Math.tex("{${"|"}}${r'\Gamma_L'}{${"|"}}${r'\angle'}${r' \theta_o '} = ${r'\frac{1-SWR}{1+SWR}'}${r'\angle'}${r' \theta_o '}", textStyle: TextStyle(fontSize: 25 , ) ,  )),
                      ListTile( title: Math.tex("", textStyle: TextStyle(fontSize: 20 , color: Colors.red) ,  )),
                      ListTile( title: Math.tex("${r'\Gamma'}{(z)} = ${r'\Gamma_L *'}e^{{j2}${ r'\beta '}z}", textStyle:  TextStyle(fontSize: 23 ,  ) ,  )),
                    ],),


                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("Input${r'\ \,'}Impedance${r'\ \,'}${r'Z_'}{in}(-${r'\ell'}) " , textStyle:  TextStyle(fontSize: 23 ,  fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_'}{in}(-${r'\ell'}) =${r'\frac{Z_L + jZ_otan(\beta \ell)}{Z_o + jZ_Ltan(\beta \ell)}'}${r'Z_o \;\;\Omega'}", textStyle: TextStyle(fontSize: 25 ,) ,  )),),
                      Text("" , style: TextStyle(fontSize: 20),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'Z_'}{in}(-${r'\ell'}) = ${r'\frac{1+ \Gamma_L e^{2j \beta z}}{1- \Gamma_L e^{2j \beta z}}'}${r' \Z_o \;\;\Omega'}", textStyle: TextStyle(fontSize: 25 , ) ,  )),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("Z= ${r'\,'}-${r'\ell'} ", textStyle: TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold) ,  )),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("${r'\tan(\beta \ell) \,in\,radians'} ", textStyle: TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold) ,  )),),
                    ],),

                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("Voltage${r'\;\;'}V(Z) " , textStyle:  TextStyle(fontSize: 23 ,  fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("V(Z) = ${r'\ V_o^+'}${r'\,'}e^{-j${ r'\beta '}z} + ${r'\ V_o^-'}${r'\,'}e^{j${ r'\beta '}z} ", textStyle: TextStyle(fontSize: 25 ,) ,)),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" ${r'\quad'}${r'\quad'}${r'\quad'}= ${r'\ V_o^+'}${r'\,'}e^{-j${ r'\beta '}z}(1+ ${r'\Gamma_L'}e^{j2${ r'\beta '}z})${r'\ V'} ", textStyle: TextStyle(fontSize: 25 ,) ,)),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("  ${r'\ V_o^+'}= Incident${r'\,'}Voltage  ", textStyle: TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold) ,)),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("  ${r'\ V_o^-'}= Reflected${r'\,'}Voltage  ", textStyle: TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold) ,)),),
                    ],),

                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex(" Current${r'\;\;'}I(Z)  " , textStyle:  TextStyle(fontSize: 23 ,  fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex("I(Z) =${r'\frac {1}{Z_o}'}(${r'\ V_o^+'}${r'\,'}e^{-j${ r'\beta '}z} - ${r'\ V_o^-'}${r'\,'}e^{j${ r'\beta '}z})" , textStyle: TextStyle(fontSize: 25 ,) ,)),),
                      ListTile(title: FittedBox(alignment: FractionalOffset.centerLeft, fit: BoxFit.scaleDown,
                        child:  Math.tex(" ${r'\quad'}${r'\quad'}${r'\quad'}= ${r'\frac {V_o^+}{Z_o}'}${r'\,'}e^{-j${ r'\beta '}z}(1- ${r'\Gamma_L'}e^{j2${ r'\beta '}z})${r'\ A'} ", textStyle: TextStyle(fontSize: 25 ,) ,)),),

                    ],),

                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("Power${r'\;\;'}(${r'\! P_L'})  " , textStyle:  TextStyle(fontSize: 23 ,  fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile( title: Math.tex("${r'\! P_L= \frac{V_g ^{\;\,2}}{8Z_g}'}(1-|${r'\Gamma_L'}|^2)${r'\ W'}", textStyle: TextStyle(fontSize: 25 ,)),),
                      ListTile( title: Math.tex("", textStyle: TextStyle(fontSize: 20 , color: Colors.red) ,  )),
                      ListTile( title: Math.tex("${r'\! P_L= \frac {1}{2}|\frac{V_g }{Z_g+ Z_{in}}|^2\;Re(Z_{in})'}${r'\ W'}", textStyle: TextStyle(fontSize: 25 ,)),),
                      ListTile( title: Math.tex("  ${r'\ V_g'}= Generator ${r'\,'}Voltage  ", textStyle: TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold) ,)),
                      ListTile( title: Math.tex("  ${r'\ Z_g'}= Output ${r'\,'}Impedance ", textStyle: TextStyle(fontSize: 20 , color: Colors.red , fontWeight: FontWeight.bold) ,)),
                    ],),

                  SizedBox(height: 20),
                  ExpansionTile(title: Math.tex("${r'Power\;Available\;\;'}(${r'\! P_{av}'})  " , textStyle:  TextStyle(fontSize: 23 ,  fontWeight: FontWeight.bold),),
                    backgroundColor: Colors.grey[200],
                    children:[
                      ListTile( title: Math.tex("${r'\! P_{av}= \frac{V_g ^{\;\,2}}{8Z_g}'}${r'\ \quad if\; Z_g = Z_o'}", textStyle: TextStyle(fontSize: 25 ,)),),
                    ],),



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







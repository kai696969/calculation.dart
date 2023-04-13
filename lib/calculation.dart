import 'package:extended_math/extended_math.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/rendering.dart';
import 'package:fyp_v1/powerPage.dart';
import 'package:fyp_v1/powerPage1.dart';
import 'package:fyp_v1/rcBothinput.dart';
import 'package:fyp_v1/rcPage.dart';
import 'package:fyp_v1/rcswr.dart';
import 'package:fyp_v1/rczPage.dart';
import 'package:fyp_v1/rczPage2.dart';
import 'package:fyp_v1/rczPageBoth.dart';
import 'package:fyp_v1/vZ.dart';
import 'package:fyp_v1/variables.dart';
import 'package:fyp_v1/vin.dart';
import 'package:fyp_v1/zInPage.dart';
import 'package:fyp_v1/zInPageBoth.dart';
import 'package:fyp_v1/zInPageusingSWR.dart';
import 'Vominus.dart';
import 'Voplus.dart';
import 'iZ.dart';
import 'ifelsefunctions.dart';

class calculation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _calculationState();
  }
}

class _calculationState extends State<calculation> {
  final variables = Variables();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
body: GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
      child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
    padding:  EdgeInsets.only(left: 0.0, right: 0.0 , top: 0.0),
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
            padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                    Row (
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, top: 10.0),
                              child: TextField(
                                controller: variables.reZL,
                                decoration: InputDecoration(
                                    label:Text( "ZL ᵣₑ (Ω)",
                                    style: TextStyle(
                                      fontSize: 20, color: Colors.blue,)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10))
                                ),
                                keyboardType: TextInputType.text,
                                onEditingComplete: () {
                                  setState(() {
                                    _rcDisplay(variables.reZL.text);
                                    _zInDisplay(variables.reZL.text);
                                    _rczDisplay(variables.reZL.text);

                                  });
                                },
                            ),
                          ),

                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 10.0),
                          child: TextField(
                            controller: variables.imZL,
                            decoration: InputDecoration(
                                label:Text( "ZL ᵢₘ (jΩ)",
                                style: TextStyle(
                                  fontSize: 20, color: Colors.blue,)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              setState(() {
                                _rcDisplay(variables.imZL.text);
                                _zInDisplay(variables.imZL.text);
                                _rczDisplay(variables.imZL.text);

                              });
                            },
                          ),
                        ),

                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 10.0),
                            child: TextField(
                              controller: variables.reZo,
                              decoration: InputDecoration(
                                  label: Text("Zo ᵣₑ (Ω)",
                                  style: TextStyle(
                                    fontSize: 20, color: Colors.blue,)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {
                                setState(() {
                                  _rcDisplay(variables.reZo.text);
                                  _zInDisplay(variables.reZo.text);
                                  _rczDisplay(variables.reZo.text);
                                });
                              },
                            ),
                          ),

                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.imZo,
                            decoration: InputDecoration(
                                label:Text( "Zo  ᵢₘ (jΩ)",
                                style: TextStyle(
                                  fontSize: 20, color: Colors.blue,)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              setState(() {
                                _rcDisplay(variables.imZo.text);
                                _zInDisplay(variables.imZo.text);
                                _rczDisplay(variables.imZo.text);

                              });
                            },
                          ),
                        ),

                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.betaa,
                              decoration: InputDecoration(
                                  label:Text( "β",
                                  style: TextStyle(
                                    fontSize: 20, color: Colors.blue,)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {
                                setState(() {
                                  _rcDisplay(variables.betaa.text);
                                  _zInDisplay(variables.betaa.text);
                                  _rczDisplay(variables.betaa.text);

                                });
                              },
                            ),
                          ),
                        ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.zPos,
                            decoration: InputDecoration(
                                label:Text( "Z (m)",
                                style: TextStyle(
                                  fontSize: 20, color: Colors.blue,)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              setState(() {
                                _rcDisplay(variables.zPos.text);
                                _zInDisplay(variables.zPos.text);
                                _rczDisplay(variables.zPos.text);

                              });
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.swr,
                              decoration: InputDecoration(
                                  label:Text( "SWR",
                                  style: TextStyle(
                                    fontSize: 20, color: Colors.blue,)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {
                                setState(() {
                                  _rcDisplay(variables.swr.text);
                                  _rczDisplay(variables.swr.text);
                                  _zInDisplay(variables.swr.text);

                                });
                              },
                            ),
                          ),
                        ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.thetaRoo,
                            decoration: InputDecoration(
                                label:Text( "θₒ (rad)",
                                style: TextStyle(
                                  fontSize: 20, color: Colors.blue,)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              setState(() {
                                _rcDisplay(variables.thetaRoo.text);
                                _rczDisplay(variables.thetaRoo.text);
                                _zInDisplay(variables.thetaRoo.text);

                              });
                            },
                          ),
                        ),
                      ),

                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.thetaRcc,
                              decoration: InputDecoration(
                                  label:Text( "θᴦ (rad)",
                                  style: TextStyle(
                                    fontSize: 20, color: Colors.blue,)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {
                                setState(() {
                                  _rcDisplay(variables.thetaRcc.text);
                                  _rczDisplay(variables.thetaRcc.text);
                                  _zInDisplay(variables.thetaRcc.text);



                                });
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children: [

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0 , left:60.0),
                          child: TextField(
                            controller: variables.Vgg,
                            decoration: InputDecoration(
                                label:Text( "Vg(V)",
                                style: TextStyle(
                                  fontSize: 20, color: Colors.blue,)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              setState(() {
                                _voPlusDisplay(variables.Vgg.text);
                                _voMinusDisplay(variables.Vgg.text);
                                _vInDisplay(variables.Vgg.text);
                                _vZDisplay(variables.Vgg.text);
                                _iZDisplay(variables.Vgg.text);
                                _powerDisplay(variables.Vgg.text);

                              });
                            },

                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 60.0, top: 30.0,),
                          child: TextField(
                            controller: variables.Zgg,
                            decoration: InputDecoration(
                                label:Text( "Zg(Ω)",
                                style: TextStyle(
                                  fontSize: 20, color: Colors.blue,)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.text,
                            onEditingComplete: () {
                              setState(() {
                                _voPlusDisplay(variables.Zgg.text);
                                _voMinusDisplay(variables.Zgg.text);
                                _vInDisplay(variables.Zgg.text);
                                _vZDisplay(variables.Zgg.text);
                                _iZDisplay(variables.Zgg.text);
                                _powerDisplay(variables.Zgg.text);


                              });
                            },

                          ),
                        ),
                      ),



                    ],
                  ),

                  //rc
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        minimumSize: Size(100.0, 50.0)),
                    onPressed: () {
                      _validateRcInput1(variables.reZL.text) &&
                          _validateRcInput1(variables.imZL.text) &&
                          _validateRcInput1(variables.reZo.text) &&
                          _validateRcInput1(variables.imZo.text) &&
                          _validateRcInput1(variables.betaa.text) &&
                          _validateRcInput1(variables.zPos.text) &&
                          _validateRcInput1(variables.swr.text) &&
                          _validateRcInput1(variables.thetaRcc.text) &&
                          _validateRcInput1(variables.thetaRoo.text);
                    },
                    child: Math.tex(
                      "${r'\Gamma_L='}${variables.rcvalue1.re.toStringAsFixed(3)}+${variables.rcvalue1.im.toStringAsFixed(3)}j ",
                      textStyle: TextStyle(
                        fontSize: 30, color: Colors.white,),),
                  ),

                  //rcz
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        minimumSize: Size(100.0, 50.0)),
                    onPressed: () {
                      _validateRczInput1(variables.reZL.text) &&
                          _validateRczInput1(variables.imZL.text) &&
                          _validateRczInput1(variables.reZo.text) &&
                          _validateRczInput1(variables.imZo.text) &&
                          _validateRczInput1(variables.betaa.text) &&
                          _validateRczInput1(variables.zPos.text) &&
                          _validateRczInput1(variables.swr.text) &&
                          _validateRczInput1(variables.thetaRcc.text) &&
                          _validateRczInput1(variables.thetaRoo.text);
                    },
                    child: Math.tex(
                      "${r'\Gamma(Z)='}${variables.rcAtz1.re.toStringAsFixed(3)}+${variables.rcAtz1.im.toStringAsFixed(3)}j ", textStyle: TextStyle(fontSize: 30, color: Colors.white,),),
                  ),

                  //zin
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        minimumSize: Size(100.0, 50.0)),
                    onPressed: () {
                      _validatezInInput1(variables.reZL.text) &&
                          _validatezInInput1(variables.imZL.text) &&
                          _validatezInInput1(variables.reZo.text) &&
                          _validatezInInput1(variables.imZo.text) &&
                          _validatezInInput1(variables.betaa.text) &&
                          _validatezInInput1(variables.zPos.text) &&
                          _validatezInInput1(variables.thetaRoo.text) &&
                          _validatezInInput1(variables.thetaRcc.text) &&
                          _validatezInInput1(variables.swr.text) ;
                    },
                    child: Math.tex(
                      "${r'Z_{in}='}${variables.zInusingRcz1.re.toStringAsFixed(3)}+${variables.zInusingRcz1.im.toStringAsFixed(3)}j ",
                      textStyle: TextStyle(
                        fontSize: 30, color: Colors.white,),),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom( padding: EdgeInsets.all(10.0) , minimumSize: Size(120.0,50.0)),
                    onPressed: ()
                    {
                      _validatevInInput1(variables.Vgg.text)&& _validatevInInput1(variables.Zgg.text);

                    },
                    child:  Math.tex("${r'\ V_{in}='}${variables.Vin1.re.toStringAsFixed(3)} + ${variables.Vin1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 28 , color: Colors.white , ) ,),
                  ),

                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style:ElevatedButton.styleFrom( padding: EdgeInsets.all(10.0) , minimumSize: Size(120.0,50.0)),
                          onPressed: ()
                          {
                                _validatevoPlusInput1(variables.Vgg.text) && _validatevoPlusInput1(variables.Zgg.text);

                          },
                          child:  Math.tex("${r'\ V_o^+ ='}${variables.voplus1.re.toStringAsFixed(3)} + ${variables.voplus1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 28 , color: Colors.white , ) ,),
                        ),

                  SizedBox(
                    height: 20,
                  ),
            ElevatedButton(
                          style:ElevatedButton.styleFrom( padding: EdgeInsets.all(10.0) , minimumSize: Size(120.0,50.0)),
                          onPressed: ()
                          {
                            _validatevoMinusInput1(variables.Vgg.text) && _validatevoMinusInput1(variables.Zgg.text);
                          },
              child:  Math.tex("${r'\ V_o^- ='}${variables.vominus1.re.toStringAsFixed(3)} + ${variables.vominus1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 28 , color: Colors.white , ) ,),
                        ),


                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom( padding: EdgeInsets.all(10.0) , minimumSize: Size(120.0,50.0)),
                    onPressed: ()
                    {
                      _validatevZ1(variables.Vgg.text)&& _validatevZ1(variables.Zgg.text);

                    },
                    child:  Math.tex("${r'\ V(Z)='}${variables.vatzvalue1.re.toStringAsFixed(3)}+${variables.vatzvalue1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 28 , color: Colors.white , ) ,),
                  ),


                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom( padding: EdgeInsets.all(10.0) , minimumSize: Size(120.0,50.0)),
                    onPressed: ()
                    {
                      _validateiZ1(variables.Vgg.text) && _validateiZ1(variables.Zgg.text);
                    },
                    child:  Math.tex("${r'\ I(Z) ='}${variables.iatzvalue1.re.toStringAsFixed(3)} + ${variables.iatzvalue1.im.toStringAsFixed(3)}j" , textStyle:  TextStyle(fontSize: 28 , color: Colors.white , ) ,),
                  ),


                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom( padding: EdgeInsets.all(10.0) , minimumSize: Size(120.0,50.0)),
                    onPressed: ()
                    {
                      _validatePower1(variables.Vgg.text) && _validatePower1(variables.Zgg.text);
                    },
                    child:  Math.tex("${r'\ P_L ='}${variables.power1.toStringAsFixed(3)}" , textStyle:  TextStyle(fontSize: 28 , color: Colors.white , ) ,),
                  ),

                  //clear all
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        minimumSize: Size(290.0, 10.0)),
                    onPressed: () {
                      variables.reZL.clear();
                      variables.imZL.clear();
                      variables.reZo.clear();
                      variables.imZo.clear();
                      variables.betaa.clear();
                      variables.zPos.clear();
                      variables.swr.clear();
                      variables.thetaRcc.clear();
                      variables.thetaRoo.clear();
                       variables.Zgg.clear();
                       variables.Vgg.clear();
                      variables.realZL = 0;
                      variables.imaginaryZL = 0;
                      variables.realZo = 0;
                      variables.imaginaryZo = 0;
                      variables.beta = 0;
                      variables.zPosition = 0;
                      variables.SWR = 0;
                      variables.thetaRc = 0;
                      variables.thetaRo = 0;
                      variables.Vg = 0;
                      variables.Zg = 0;
                      variables.rcvalue1= Complex(re:0 , im:0);
                      variables.rcAtz1= Complex(re:0 , im:0);
                      variables.zInusingRcz1= Complex(re:0 , im:0);
                      variables.Vin1= Complex(re:0 , im:0);
                      variables.voplus1= Complex(re:0 , im:0);
                      variables.vominus1= Complex(re:0 , im:0);
                      variables.vatzvalue1= Complex(re:0 , im:0);
                      variables.iatzvalue1= Complex(re:0 , im:0);
                      variables.power1 = 0;




                    },
                    child: Text('Clear All', style: TextStyle(fontSize: 25),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      ),
),
    );
  }

  //calculate rc
  _validateRcInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" &&
        variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != ""
        && variables.thetaRoo.text != "") {
      executeRc(context, variables);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              rcBothinput(
                j: variables.j, realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue, zovalue: variables.zovalue,
                zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop, rcbtm: variables.rcbtm, rctop1: variables.rctop1,
                rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR, rcUsingSwr1: variables.rcUsingSwr1,
                thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue, thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1,
                thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos, j2betaZpos1: variables.j2betaZpos1, rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1, rcvalue1: variables.rcvalue1,
              ),),);
    }

    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "") {
      executeRc1(context, variables);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              rcPage(
                j: variables.j, realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo,
                zlvalue: variables.zlvalue, zovalue: variables.zovalue, zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop,
                rcbtm: variables.rcbtm, rctop1: variables.rctop1, rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition, rcvalue1: variables.rcvalue1,
              ),),);
    }

    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != ""
        && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      executeRc2(context, variables);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              rcswr(
                j: variables.j, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR, rcUsingSwr1: variables.rcUsingSwr1,
                thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue, thetaRo1: variables.thetaRo1,
                swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos,
                j2betaZpos1: variables.j2betaZpos1, rcvalue1: variables.rcvalue1,
              ),),);
    }
    else {}
  }

  //display rc
  _rcDisplay(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "")
    {
      executeRc(context, variables);
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "")
    {
      executeRc1(context, variables);
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "")
    {
      executeRc2(context, variables);
    }
    else {}
  }

  //calculate zin
  _validatezInInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" &&
        variables.thetaRcc.text != "" && variables.thetaRoo.text != "")
    {
      executezIn(context, variables);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                zInPageBoth(j: variables.j,
                    realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo,
                    imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue, zovalue: variables.zovalue,
                    zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop,
                    rcbtm: variables.rcbtm, rctop1: variables.rctop1, rcbtm1: variables.rcbtm1,
                    beta: variables.beta, zPosition: variables.zPosition, zIn: variables.zIn, zIntop: variables.zIntop,
                    zInbtm: variables.zInbtm, zIntop1: variables.zIntop1, zInbtm1: variables.zInbtm1,
                    zIn1: variables.zIn1, tanbetaz: variables.tanbetaz , tanbetaz1 : variables.tanbetaz1),),);
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "")
    {
      executezIn(context, variables);
      Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                zInPage(j: variables.j,
                    realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo,
                    imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue, zovalue: variables.zovalue,
                    zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop,
                    rcbtm: variables.rcbtm, rctop1: variables.rctop1, rcbtm1: variables.rcbtm1,
                    beta: variables.beta, zPosition: variables.zPosition, zIn: variables.zIn, zIntop: variables.zIntop,
                    zInbtm: variables.zInbtm, zIntop1: variables.zIntop1, zInbtm1: variables.zInbtm1,
                    zIn1: variables.zIn1, tanbetaz: variables.tanbetaz , tanbetaz1 : variables.tanbetaz1),),);

    }
    else if (variables.reZo.text != "" && variables.imZo.text != ""&& variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != ""  )
    {
      executezIn1(context, variables);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                zInPageusingSWR(
                    j: variables.j,
                    realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo,
                    imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue, zovalue: variables.zovalue,
                    zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop,
                    rcbtm: variables.rcbtm, rctop1: variables.rctop1, rcbtm1: variables.rcbtm1,
                    beta: variables.beta, zPosition: variables.zPosition, zIn: variables.zIn, zIntop: variables.zIntop,
                    zInbtm: variables.zInbtm, zIntop1: variables.zIntop1, zInbtm1: variables.zInbtm1,
                    zIn1: variables.zIn1, tanbetaz: variables.tanbetaz , tanbetaz1 : variables.tanbetaz1)
                ),);
    }
    else {}
  }

  //display zin
  _zInDisplay(String input) {
    {
      if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
          variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
        executezIn(context, variables);
      }
      else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "") {
        executezIn(context, variables);
      }
      else if (variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" &&
          variables.thetaRoo.text != "") {
        executezIn1(context, variables);
      }
      else {}
    }
  }


  //calculate rcz
  _validateRczInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" &&
        variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
  executeRc(context, variables);
  executeRczremaining(context, variables);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rczPageBoth(j: variables.j,
                  realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo,
                  zlvalue: variables.zlvalue, zovalue: variables.zovalue, zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop, rcbtm: variables.rcbtm,
                  rctop1: variables.rctop1, rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR,
                  rcUsingSwr1: variables.rcUsingSwr1, thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue,
                  thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos,
                  j2betaZpos1: variables.j2betaZpos1, rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1,
                  rcvalue1: variables.rcvalue1,
                ),),);

    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != ""&& variables.zPos.text != "" && variables.betaa.text != "") {
      executeRc1(context, variables) ;
      executeRczremaining(context, variables);

      Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rczPage(j: variables.j,
                  realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo,
                  zlvalue: variables.zlvalue, zovalue: variables.zovalue, zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop, rcbtm: variables.rcbtm,
                  rctop1: variables.rctop1, rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR,
                  rcUsingSwr1: variables.rcUsingSwr1, thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue,
                  thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos,
                  j2betaZpos1: variables.j2betaZpos1, rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1, rcvalue1: variables.rcvalue1,
                ),),);
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      executeRc2(context, variables);
      executeRczremaining(context, variables);
      Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rczPage2(j: variables.j,
                  realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo,
                  zlvalue: variables.zlvalue, zovalue: variables.zovalue, zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop, rcbtm: variables.rcbtm,
                  rctop1: variables.rctop1, rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR,
                  rcUsingSwr1: variables.rcUsingSwr1, thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue,
                  thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos,
                  j2betaZpos1: variables.j2betaZpos1, rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1, rcvalue1: variables.rcvalue1,
                ),),);
          }
    else {}
  }

  //display rcz
  _rczDisplay(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" &&
        variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      executeRc(context, variables);
      executeRczremaining(context, variables);
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != ""&& variables.zPos.text != "" && variables.betaa.text != "") {
      executeRc1(context, variables);
      executeRczremaining(context, variables);
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      executeRc2(context, variables);
      executeRczremaining(context, variables);
    }
    else {}
  }

  // calculate voplus
  _validatevoPlusInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" &&
        variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" &&
        variables.Zgg.text != "") {
      executevoPlus(context, Variables());
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              Voplus(j: variables.j,
                  realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue,
                  zovalue: variables.zovalue, rcvalue1: variables.rcvalue1, rctop: variables.rctop, rcbtm: variables.rcbtm, rctop1: variables.rctop1,
                  rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition,
                  SWR: variables.SWR, thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue, thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2,
                  j2betaZpos: variables.j2betaZpos, j2betaZpos1: variables.j2betaZpos1,
                  rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1, zInusingRcz1: variables.zInusingRcz1, zInusingRcz: variables.zInusingRcz,
                  zInusingRczTop: variables.zInusingRczTop, zInusingRczBtm: variables.zInusingRczBtm, zInusingRczTop1: variables.zInusingRczTop1, zInusingRczBtm1: variables.zInusingRczBtm1, Vg: variables.Vg, Zg: variables.Zg, Vin1: variables.Vin1,
                  Vin: variables.Vin, voplus: variables.voplus, voplus1: variables.voplus1, vominus: variables.vominus, vominus1: variables.vominus1, vatzvalue: variables.vatzvalue,
                  vatzvalue1: variables.vatzvalue1, jbetaZpos:variables.jbetaZpos , jbetaZpos1:variables.jbetaZpos1),
        ),
      );
    }
  }
  // display voplus
  _voPlusDisplay(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
    {
      executevoPlus(context, Variables());
    }
  }


  // calculate vominus
  _validatevoMinusInput1(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevoMinus(context,variables);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context)=>Vominus(j:variables.j ,realZL:variables.realZL ,  imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
              imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue , rcvalue1:variables.rcvalue1,
              rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 , rcbtm1:variables.rcbtm1,
              beta:variables.beta , zPosition:variables.zPosition , SWR:variables.SWR , thetaRc:variables.thetaRc , thetaRo:variables.thetaRo ,
              swrValue:variables.swrValue, thetaRo1:variables.thetaRo1,
              swrValue1:variables.swrValue1 , thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,  j2betaZpos1:variables.j2betaZpos1,
              rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1, zInusingRcz1:variables.zInusingRcz1 , zInusingRcz:variables.zInusingRcz,
              zInusingRczTop:variables.zInusingRczTop , zInusingRczBtm:variables.zInusingRczBtm ,  zInusingRczTop1:variables.zInusingRczTop1 ,
              zInusingRczBtm1:variables.zInusingRczBtm1, Vg:variables.Vg , Zg:variables.Zg , Vin1:variables.Vin1 , Vin:variables.Vin ,
              voplus:variables.voplus , voplus1:variables.voplus1,vominus:variables.vominus , vominus1:variables.vominus1,
              vatzvalue:variables.vatzvalue , vatzvalue1:variables.vatzvalue1),
        ),
      );
  }
  // display vominus
  _voMinusDisplay(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevoMinus(context,variables);
  }


   // calculate vin
  _validatevInInput1(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevIn(context, variables);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context)=>vin(j:variables.j ,realZL:variables.realZL ,  imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
            imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue , rcvalue1:variables.rcvalue1,
            rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 , rcbtm1:variables.rcbtm1,
            beta:variables.beta , zPosition:variables.zPosition , SWR:variables.SWR , thetaRc:variables.thetaRc , thetaRo:variables.thetaRo ,
            swrValue:variables.swrValue, thetaRo1:variables.thetaRo1,
            swrValue1:variables.swrValue1 , thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,  j2betaZpos1:variables.j2betaZpos1,
            rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1, zInusingRcz1:variables.zInusingRcz1 , zInusingRcz:variables.zInusingRcz,
            zInusingRczTop:variables.zInusingRczTop , zInusingRczBtm:variables.zInusingRczBtm ,  zInusingRczTop1:variables.zInusingRczTop1 ,
            zInusingRczBtm1:variables.zInusingRczBtm1, Vg:variables.Vg , Zg:variables.Zg , Vin1:variables.Vin1 , Vin:variables.Vin ,
            voplus:variables.voplus , voplus1:variables.voplus1,vominus:variables.vominus , vominus1:variables.vominus1,
            vatzvalue:variables.vatzvalue , vatzvalue1:variables.vatzvalue1),
      ),
    );

  }
  // display vin
  _vInDisplay(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevIn(context, variables);
  }


  // calculate vZ
  _validatevZ1(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")

      executevZ(context, variables);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context)=>vZ(j:variables.j ,realZL:variables.realZL ,  imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
          imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue , rcvalue1:variables.rcvalue1,
          rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 , rcbtm1:variables.rcbtm1, zovalue1:variables.zovalue1,
          beta:variables.beta , zPosition:variables.zPosition , SWR:variables.SWR , thetaRc:variables.thetaRc , thetaRo:variables.thetaRo , swrValue:variables.swrValue, thetaRo1:variables.thetaRo1,
          swrValue1:variables.swrValue1 , thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,  j2betaZpos1:variables.j2betaZpos1,
          rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1, zInusingRcz1:variables.zInusingRcz1 , zInusingRcz:variables.zInusingRcz,
          zInusingRczTop:variables.zInusingRczTop , zInusingRczBtm:variables.zInusingRczBtm ,  zInusingRczTop1:variables.zInusingRczTop1 ,
          zInusingRczBtm1:variables.zInusingRczBtm1, Vg:variables.Vg , Zg:variables.Zg , Vin1:variables.Vin1 , Vin:variables.Vin , voplus:variables.voplus ,
          voplus1:variables.voplus1,vominus:variables.vominus , vominus1:variables.vominus1, vatzvalue:variables.vatzvalue , vatzvalue1:variables.vatzvalue1,
        ),
      ),
    );
  }
  // display vZ
  _vZDisplay(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevZ(context, variables);

  }













  // calculate iZ
  _validateiZ1(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevoPlus(context, variables);
    final vatzvaluee = variables.voplus1 *  variables.jbetaZpos1 *  variables.zInusingRczBtm1 ;
    variables.vatzvaluee1 =vatzvaluee;
    final iatzvalue = variables.vatzvaluee1/variables.zovalue1 ;
    variables.iatzvalue1 = iatzvalue;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context)=>iZ(j:variables.j ,realZL:variables.realZL ,  imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
          imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue , rcvalue1:variables.rcvalue1,
          rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 , rcbtm1:variables.rcbtm1, zovalue1:variables.zovalue1,
          beta:variables.beta , zPosition:variables.zPosition , SWR:variables.SWR , thetaRc:variables.thetaRc , thetaRo:variables.thetaRo , swrValue:variables.swrValue, thetaRo1:variables.thetaRo1,
          swrValue1:variables.swrValue1 , thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,  j2betaZpos1:variables.j2betaZpos1,
          rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1, zInusingRcz1:variables.zInusingRcz1 , zInusingRcz:variables.zInusingRcz,
          zInusingRczTop:variables.zInusingRczTop , zInusingRczBtm:variables.zInusingRczBtm ,  zInusingRczTop1:variables.zInusingRczTop1 ,
          zInusingRczBtm1:variables.zInusingRczBtm1, Vg:variables.Vg , Zg:variables.Zg , Vin1:variables.Vin1 , Vin:variables.Vin , voplus:variables.voplus ,
          voplus1:variables.voplus1,vominus:variables.vominus , vominus1:variables.vominus1, vatzvalue:variables.vatzvalue , vatzvalue1:variables.vatzvalue1,
            iatzvalue: variables.iatzvalue , iatzvalue1:variables.iatzvalue1 , vatzvaluee:variables.vatzvaluee , vatzvaluee1:variables.vatzvaluee1,
        ),
      ),
    );

  }
  // display iZ
  _iZDisplay(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "")
      executevoPlus(context, variables);
    final vatzvaluee = variables.voplus1 *  variables.jbetaZpos1 *  variables.zInusingRczBtm1 ;
    variables.vatzvaluee1 =vatzvaluee;
    final iatzvalue = variables.vatzvaluee1/variables.zovalue1 ;
    variables.iatzvalue1 = iatzvalue;
  }


  // calculate power
  _validatePower1(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "" && variables.Zgg.text == variables.reZo.text)
      {
        executePower1(context, variables);
        final power = (((variables.Vg*variables.Vg)/(8*variables.Zg)))*(1- (variables.rcvalue1.module.abs()*variables.rcvalue1.module.abs()));
        variables.power1 = power;
        // final powerr = 0.5*((variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs() * (variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs())*variables.zInusingRcz1.re;
        // variables.powerr1 = powerr;
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>powerPage(j:variables.j ,realZL:variables.realZL ,  imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
                imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue , rcvalue1:variables.rcvalue1,
                rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 , rcbtm1:variables.rcbtm1, zovalue1:variables.zovalue1,
                beta:variables.beta , zPosition:variables.zPosition , SWR:variables.SWR , thetaRc:variables.thetaRc , thetaRo:variables.thetaRo , swrValue:variables.swrValue, thetaRo1:variables.thetaRo1,
                swrValue1:variables.swrValue1 , thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,  j2betaZpos1:variables.j2betaZpos1,
                rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1, zInusingRcz1:variables.zInusingRcz1 , zInusingRcz:variables.zInusingRcz,
                zInusingRczTop:variables.zInusingRczTop , zInusingRczBtm:variables.zInusingRczBtm ,  zInusingRczTop1:variables.zInusingRczTop1 ,
                zInusingRczBtm1:variables.zInusingRczBtm1, Vg:variables.Vg , Zg:variables.Zg , power:variables.power , power1:variables.power1,  powerr:variables.powerr , powerr1:variables.powerr1,

              ),
            ),
        );
      }
    else if(variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "" && variables.Zgg.text != variables.reZo.text)
      {
        executePower1(context, variables);
        final power = 0.5*((variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs() * (variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs())*variables.zInusingRcz1.re;
        variables.power1 = power;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context)=>powerPage1(j:variables.j ,realZL:variables.realZL ,  imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
              imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue , rcvalue1:variables.rcvalue1,
              rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 , rcbtm1:variables.rcbtm1, zovalue1:variables.zovalue1,
              beta:variables.beta , zPosition:variables.zPosition , SWR:variables.SWR , thetaRc:variables.thetaRc , thetaRo:variables.thetaRo , swrValue:variables.swrValue, thetaRo1:variables.thetaRo1,
              swrValue1:variables.swrValue1 , thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,  j2betaZpos1:variables.j2betaZpos1,
              rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1, zInusingRcz1:variables.zInusingRcz1 , zInusingRcz:variables.zInusingRcz,
              zInusingRczTop:variables.zInusingRczTop , zInusingRczBtm:variables.zInusingRczBtm ,  zInusingRczTop1:variables.zInusingRczTop1 ,
              zInusingRczBtm1:variables.zInusingRczBtm1, Vg:variables.Vg , Zg:variables.Zg , power:variables.power , power1:variables.power1,powerr:variables.powerr , powerr1:variables.powerr1,

            ),
          ),
        );
      }


  }
  // display power
  _powerDisplay(String input)
  {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "" && variables.Zgg.text == variables.reZo.text)
    {
      executePower1(context, variables);
      final power = (((variables.Vg*variables.Vg)/(8*variables.Zg)))*(1- (variables.rcvalue1.module.abs()*variables.rcvalue1.module.abs()));
      variables.power1 = power;
      // final powerr = 0.5*((variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs() * (variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs())*variables.zInusingRcz1.re;
      // variables.powerr1 = powerr;

    }
    else if(variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "" && variables.Vgg.text != "" && variables.Zgg.text != "" && variables.Zgg.text != variables.reZo.text)
    {
      executePower1(context, variables);
      final power = 0.5*((variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs() * (variables.Vg/ (variables.Zg + variables.zInusingRcz1.re)).abs())*variables.zInusingRcz1.re;
      variables.power1 = power;

    }


  }












}










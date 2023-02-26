import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/rendering.dart';
import 'package:extended_math/extended_math.dart';
import 'package:fyp_v1/rcBothinput.dart';
import 'package:fyp_v1/rcPage.dart';
import 'package:fyp_v1/rcswr.dart';
import 'package:fyp_v1/rczPage.dart';
import 'package:fyp_v1/variables.dart';
import 'package:fyp_v1/zInPage.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.reZL,
                              decoration: InputDecoration(
                                  hintText: "ZL ᵣₑ (Ω)",
                                  hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue,),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.number,
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
                      ),
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.imZL,
                            decoration: InputDecoration(
                                hintText: "ZL ᵢₘ (jΩ)",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,
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
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.reZo,
                              decoration: InputDecoration(
                                  hintText: "Zo ᵣₑ (Ω)",
                                  hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue,),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.number,
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
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.imZo,
                            decoration: InputDecoration(
                                hintText: "Zo  ᵢₘ (jΩ)",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,
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
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.betaa,
                              decoration: InputDecoration(
                                  hintText: "β",
                                  hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue,),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.number,
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
                      ),
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.zPos,
                            decoration: InputDecoration(
                                hintText: "Z (m)",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,
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
                      )

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.swr,
                              decoration: InputDecoration(
                                  hintText: "SWR",
                                  hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue,),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.number,
                              onEditingComplete: () {
                                setState(() {
                                  _rcDisplay(variables.swr.text);
                                  _rczDisplay(variables.swr.text);
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.thetaRoo,
                            decoration: InputDecoration(
                                hintText: "θₒ (rad)",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,
                            onEditingComplete: () {
                              setState(() {
                                _rcDisplay(variables.thetaRoo.text);
                                _rczDisplay(variables.thetaRoo.text);
                              });
                            },
                          ),
                        ),
                      ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.thetaRcc,
                              decoration: InputDecoration(
                                  hintText: "θᴦ (rad)",
                                  hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue,),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.number,
                              onEditingComplete: () {
                                setState(() {
                                  _rcDisplay(variables.thetaRcc.text);
                                  _rczDisplay(variables.thetaRcc.text);
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.uP,
                            decoration: InputDecoration(
                                hintText: "ᵁᵖ (m/s)",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,

                          ),
                        ),
                      ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, top: 30.0),
                            child: TextField(
                              controller: variables.w,
                              decoration: InputDecoration(
                                  hintText: "ω",
                                  hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.blue,),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.lambdaa,
                            decoration: InputDecoration(
                                hintText: "λ",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,

                          ),
                        ),
                      ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.Freq,
                            decoration: InputDecoration(
                                hintText: "Frequency (㎐)",
                                hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.blue,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                            keyboardType: TextInputType.number,

                          ),
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
                      "${r'\Gamma_L='}${variables.rcvalue1.re.toStringAsFixed(
                          3)}+${variables.rcvalue1.im.toStringAsFixed(3)}j ",
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
                      "${r'\Gamma_L='}${variables.rcAtz1.re.toStringAsFixed(3)}+${variables.rcAtz1.im.toStringAsFixed(3)}j ", textStyle: TextStyle(fontSize: 30, color: Colors.white,),),
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
                          _validatezInInput1(variables.zPos.text);
                    },
                    child: Math.tex(
                      "${r'Z_{in}='}${variables.zIn1.re.toStringAsFixed(3)}+${variables.zIn1.im.toStringAsFixed(3)}j ",
                      textStyle: TextStyle(
                        fontSize: 30, color: Colors.white,),),
                  ),

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
                      variables.uP.clear();
                      variables.w.clear();
                      variables.lambdaa.clear();
                      variables.Freq.clear();
                      variables.realZL = 0;
                      variables.imaginaryZL = 0;
                      variables.realZo = 0;
                      variables.imaginaryZo = 0;
                      variables.beta = 0;
                      variables.zPosition = 0;
                      variables.SWR = 0;
                      variables.thetaRc = 0;
                      variables.thetaRo = 0;
                      variables.phaseVelocity = 0;
                      variables.omega = 0;
                      variables.lambda = 0;
                      variables.freq = 0;
                    },
                    child: Text('Clear All', style: TextStyle(fontSize: 25),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //calculate rc
  _validateRcInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" &&
        variables.thetaRcc.text != "" && variables.thetaRoo.text != "")
    {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rcBothinput(
                  j: variables.j, realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo,
                  imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue, zovalue: variables.zovalue,
                  zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop,
                  rcbtm: variables.rcbtm, rctop1: variables.rctop1, rcbtm1: variables.rcbtm1,
                  beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR, rcUsingSwr1: variables.rcUsingSwr1,
                  thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue, thetaRo1: variables.thetaRo1,
                  swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos,
                  j2betaZpos1: variables.j2betaZpos1, rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1, rcvalue1: variables.rcvalue1,
                ),),);
      });
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "") {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rcPage(
                  j: variables.j, realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo,
                  imaginaryZo: variables.imaginaryZo, zlvalue: variables.zlvalue, zovalue: variables.zovalue,
                  zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop,
                  rcbtm: variables.rcbtm, rctop1: variables.rctop1, rcbtm1: variables.rcbtm1,
                  beta: variables.beta, zPosition: variables.zPosition, rcvalue1: variables.rcvalue1,
                ),),);
      });
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      setState(() {
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.rcvalue1 = variables.rcUsingSwr1;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rcswr(
                  j: variables.j, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR,
                  rcUsingSwr1: variables.rcUsingSwr1, thetaRc: variables.thetaRc, thetaRo: variables.thetaRo,
                  swrValue: variables.swrValue, thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2,
                  j2betaZpos: variables.j2betaZpos, j2betaZpos1: variables.j2betaZpos1, rcvalue1: variables.rcvalue1,
                ),),);
      });
    }
    else {}
  }

  //display rc
  _rcDisplay(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "")
    {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
      });
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "")
    {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
      });
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      setState(() {
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.rcvalue1 = variables.rcUsingSwr1;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
      });
    }
    else {}
  }

  //calculate zin
  _validatezInInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "") {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        final tanbetaz = tan(variables.beta * variables.zPosition);
        final j = Complex(re: 0, im: 1);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final zIntop = ((zlvalue + (zovalue * j * -tanbetaz)));
        final zInbtm = (zovalue + (zlvalue * j * -tanbetaz));
        final zIn = (zIntop / zInbtm) * (zovalue);
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        variables.zIntop1 = zIntop;
        variables.zInbtm1 = zInbtm;
        variables.zIn1 = zIn;
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
                    zIn1: variables.zIn1, tanbetaz: variables.tanbetaz),),);
      });
    }
    else {}
  }

  //display zin
  _zInDisplay(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "") {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        final tanbetaz = tan(variables.beta * variables.zPosition);
        final j = Complex(re: 0, im: 1);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final zIntop = ((zlvalue + (zovalue * j * -tanbetaz)));
        final zInbtm = (zovalue + (zlvalue * j * -tanbetaz));
        final zIn = (zIntop / zInbtm) * (zovalue);
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        variables.zIntop1 = zIntop;
        variables.zInbtm1 = zInbtm;
        variables.zIn1 = zIn;
      });
    }
    else {}
  }

  //calculate rcz
  _validateRczInput1(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" &&
        variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
        final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        variables.j2betaZpos1 = j2betaZpos;
        variables.rcAtz1 = rcAtz;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                rczPage(j: variables.j,
                  realZL: variables.realZL, imaginaryZL: variables.imaginaryZL, realZo: variables.realZo, imaginaryZo: variables.imaginaryZo,
                  zlvalue: variables.zlvalue, zovalue: variables.zovalue, zlvalue1: variables.zlvalue1, zovalue1: variables.zovalue1, rctop: variables.rctop, rcbtm: variables.rcbtm,
                  rctop1: variables.rctop1, rcbtm1: variables.rcbtm1, beta: variables.beta, zPosition: variables.zPosition, SWR: variables.SWR,
                  rcUsingSwr1: variables.rcUsingSwr1, thetaRc: variables.thetaRc, thetaRo: variables.thetaRo, swrValue: variables.swrValue,
                  thetaRo1: variables.thetaRo1, swrValue1: variables.swrValue1, thetaRo2: variables.thetaRo2, j2betaZpos: variables.j2betaZpos,
                  j2betaZpos1: variables.j2betaZpos1, rcAtz: variables.rcAtz, rcAtz1: variables.rcAtz1,
                  rcvalue1: variables.rcvalue1,
                ),),);
      });
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != ""&& variables.zPos.text != "" && variables.betaa.text != "") {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        variables.j2betaZpos1 = j2betaZpos;
        variables.rcAtz1 = rcAtz;
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
      });
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      setState(() {
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.rcvalue1 = variables.rcUsingSwr1;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
        final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        variables.j2betaZpos1 = j2betaZpos;
        variables.rcAtz1 = rcAtz;
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
    });
          }
    else {}
  }

  //display rcz
  _rczDisplay(String input) {
    if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != "" && variables.betaa.text != "" && variables.zPos.text != "" &&
        variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "")
    {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
        final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        variables.j2betaZpos1 = j2betaZpos;
        variables.rcAtz1 = rcAtz;
      });
    }
    else if (variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != "" && variables.imZo.text != ""&& variables.zPos.text != "" && variables.betaa.text != "") {
      setState(() {
        variables.realZL = double.parse(variables.reZL.text);
        variables.imaginaryZL = double.parse(variables.imZL.text);
        variables.realZo = double.parse(variables.reZo.text);
        variables.imaginaryZo = double.parse(variables.imZo.text);
        final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
        final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
        final rctop = ((zlvalue) - (zovalue));
        final rcbtm = ((zlvalue) + (zovalue));
        final rcvalue = rctop / rcbtm;
        variables.rcvalue1 = rcvalue;
        variables.rctop1 = rctop;
        variables.rcbtm1 = rcbtm;
        variables.zlvalue1 = zlvalue;
        variables.zovalue1 = zovalue;
        final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        variables.j2betaZpos1 = j2betaZpos;
        variables.rcAtz1 = rcAtz;
      });
    }
    else if (variables.betaa.text != "" && variables.zPos.text != "" && variables.swr.text != "" && variables.thetaRcc.text != "" && variables.thetaRoo.text != "") {
      setState(() {
        variables.beta = double.parse(variables.betaa.text);
        variables.zPosition = double.parse(variables.zPos.text);
        variables.SWR = double.parse(variables.swr.text);
        variables.thetaRc = double.parse(variables.thetaRcc.text);
        variables.thetaRo = double.parse(variables.thetaRoo.text);
        final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
        final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
        final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
        variables.rcUsingSwr1 = rcUsingSwr;
        variables.rcvalue1 = variables.rcUsingSwr1;
        variables.swrValue1 = swrValue;
        variables.thetaRo2 = thetaRo1;
        final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
        variables.j2betaZpos1 = j2betaZpos;
        variables.rcAtz1 = rcAtz;
      });
    }
    else {}
  }

}










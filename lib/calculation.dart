import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter/rendering.dart';
import 'package:extended_math/extended_math.dart';
import 'package:fyp_v1/rcBothinput.dart';
import 'package:fyp_v1/rcPage.dart';
import 'package:fyp_v1/rcswr.dart';
import 'package:fyp_v1/variables.dart';

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
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                            child: TextField(
                              controller: variables.reZL,
                              decoration: InputDecoration(
                                  hintText: "ZL ᵣₑ (Ω)",
                                  hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                          padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                          child: TextField(
                            controller: variables.imZL,
                            decoration: InputDecoration(
                                hintText: "ZL ᵢₘ (jΩ)",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                            padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                            child: TextField(
                              controller: variables.reZo,
                              decoration: InputDecoration(
                                  hintText: "Zo ᵣₑ (Ω)",
                                  hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                  Row(
                    children: [
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                          child: TextField(
                            controller: variables.imZo,
                            decoration: InputDecoration(
                                hintText: "Zo  ᵢₘ (jΩ)",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                            padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                            child: TextField(
                              controller: variables.betaa,
                              decoration: InputDecoration(
                                  hintText: "β",
                                  hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                          padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                          child: TextField(
                            controller:variables. zPos,
                            decoration: InputDecoration(
                                hintText: "Z (m)",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Padding(
                            padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                            child: TextField(
                              controller: variables.swr,
                              decoration: InputDecoration(
                                  hintText: "SWR",
                                  hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                          padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                          child: TextField(
                            controller: variables.thetaRoo,
                            decoration: InputDecoration(
                                hintText: "θₒ (rad)",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                            padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                            child: TextField(
                              controller: variables.thetaRcc,
                              decoration: InputDecoration(
                                  hintText: "θᴦ (rad)",
                                  hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                  Row(
                    children: [
                      Expanded(child:
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                          child: TextField(
                            controller: variables.uP,
                            decoration: InputDecoration(
                                hintText: "ᵁᵖ (m/s)",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue ,),
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
                            padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                            child: TextField(
                              controller: variables.w,
                              decoration: InputDecoration(
                                  hintText: "ω",
                                  hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                          padding:  const EdgeInsets.only(right:8.0, top: 30.0),
                          child: TextField(
                            controller: variables.lambdaa,
                            decoration: InputDecoration(
                                hintText: "λ",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                          padding:  const EdgeInsets.only(right: 8.0, top: 30.0),
                          child: TextField(
                            controller: variables.Freq,
                            decoration: InputDecoration(
                                hintText: "Frequency (㎐)",
                                hintStyle: TextStyle(fontSize: 20 , color: Colors.blue , ),
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
                          _validateRcInput1(variables.thetaRcc.text)&&
                          _validateRcInput1(variables.thetaRoo.text);

                    },
                    child: Math.tex("${r'\Gamma_L  using  \; Z_L \; Z_o'} ",
                      textStyle: TextStyle(
                        fontSize: 30, color: Colors.white,),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

   _validateRcInput1(String input)
   {
     if(variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != ""  &&  variables.imZo.text != ""&& variables.betaa.text!= ""
         && variables.zPos.text!= ""  &&  variables.swr.text!= "" && variables.thetaRcc.text!= "" && variables.thetaRoo.text!= "")
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
         final zlvalue = Complex(re:variables.realZL , im:variables.imaginaryZL) ;
         final zovalue = Complex(re:variables.realZo , im:variables.imaginaryZo) ;
         final rctop = ((zlvalue)-(zovalue));
         final rcbtm = ((zlvalue)+(zovalue));
         final rcvalue = rctop/rcbtm;
         variables.rcvalue1 = rcvalue;
         variables.rctop1 = rctop;
         variables.rcbtm1 = rcbtm;
         variables.zlvalue1 = zlvalue;
         variables.zovalue1 = zovalue;
         final swrValue = ((variables.SWR-1) / (1+ variables.SWR));
         final thetaRo1 = variables.thetaRc - 2*variables.beta*variables.zPosition;
         final rcUsingSwr = Complex(re: swrValue*cos(thetaRo1) , im: swrValue*sin(thetaRo1));
         variables.rcUsingSwr1 = rcUsingSwr;
         variables.swrValue1 = swrValue;
         variables.thetaRo2 = thetaRo1;
         Navigator.of(context).push(
           MaterialPageRoute(
             builder: (context)=>rcBothinput(j:variables.j , realZL: variables.realZL,
                imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
               imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue ,
               zlvalue1:variables.zlvalue1 , zovalue1:variables. zovalue1,
               rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 ,
               rcbtm1:variables.rcbtm1, beta:variables.beta , zPosition:variables.zPosition ,
                 SWR:variables.SWR , rcUsingSwr1:variables.rcUsingSwr1 ,
               thetaRc:variables.thetaRc , thetaRo:variables.thetaRo , swrValue:variables.swrValue,
                 thetaRo1:variables.thetaRo1, swrValue1:variables.swrValue1 ,
               thetaRo2:variables.thetaRo2, j2betaZpos:variables.j2betaZpos ,
               j2betaZpos1:variables.j2betaZpos1, rcAtz:variables.rcAtz, rcAtz1:variables.rcAtz1 , rcvalue1: variables.rcvalue1,
             ),),);

       });
     }
     else if(variables.reZL.text != "" && variables.imZL.text != "" && variables.reZo.text != ""  &&  variables.imZo.text != "")
     {
       setState(() {
         variables.realZL = double.parse(variables.reZL.text);
         variables.imaginaryZL = double.parse(variables.imZL.text);
         variables.realZo = double.parse(variables.reZo.text);
         variables.imaginaryZo = double.parse(variables.imZo.text);
         variables.beta = double.parse(variables.betaa.text);
         variables.zPosition = double.parse(variables.zPos.text);
         final zlvalue = Complex(re:variables.realZL , im:variables.imaginaryZL) ;
         final zovalue = Complex(re:variables.realZo , im:variables.imaginaryZo) ;
         final rctop = ((zlvalue)-(zovalue));
         final rcbtm = ((zlvalue)+(zovalue));
         final rcvalue = rctop/rcbtm;
         variables.rcvalue1 = rcvalue;
         variables.rctop1 = rctop;
         variables.rcbtm1 = rcbtm;
         variables.zlvalue1 = zlvalue;
         variables.zovalue1 = zovalue;
         Navigator.of(context).push(
           MaterialPageRoute(
             builder: (context)=>rcPage(j:variables.j , realZL: variables.realZL,
               imaginaryZL:variables.imaginaryZL , realZo:variables.realZo ,
               imaginaryZo:variables.imaginaryZo  , zlvalue:variables.zlvalue , zovalue: variables.zovalue ,
               zlvalue1:variables.zlvalue1 , zovalue1:variables. zovalue1,
               rctop:variables.rctop , rcbtm:variables.rcbtm , rctop1:variables.rctop1 ,
               rcbtm1:variables.rcbtm1, beta:variables.beta , zPosition:variables.zPosition ,
              rcvalue1: variables.rcvalue1,
             ),),);


       });
     }
     else if(variables.betaa.text!= "" && variables.zPos.text!= ""  &&  variables.swr.text!= "" && variables.thetaRcc.text!= "" && variables.thetaRoo.text!= "")
     {
       setState(() {
         variables.beta = double.parse(variables.betaa.text);
         variables.zPosition = double.parse(variables.zPos.text);
         variables.SWR = double.parse(variables.swr.text);
         variables.thetaRc = double.parse(variables.thetaRcc.text);
         variables.thetaRo = double.parse(variables.thetaRoo.text);
         final swrValue = ((variables.SWR-1) / (1+ variables.SWR));
         final thetaRo1 = variables.thetaRc - 2*variables.beta*variables.zPosition;
         final rcUsingSwr = Complex(re: swrValue*cos(thetaRo1) , im: swrValue*sin(thetaRo1));
         variables.rcUsingSwr1 = rcUsingSwr;
         variables. rcvalue1 = variables.rcUsingSwr1;
         variables.swrValue1 = swrValue;
         variables.thetaRo2 = thetaRo1;
         Navigator.of(context).push(
         MaterialPageRoute(
           builder: (context)=>rcswr(
             j:variables.j ,
             beta:variables.beta ,
             zPosition:variables.zPosition ,
             SWR:variables.SWR ,
             rcUsingSwr1:variables.rcUsingSwr1 ,
             thetaRc:variables.thetaRc ,
             thetaRo:variables.thetaRo ,
             swrValue:variables.swrValue,
             thetaRo1:variables.thetaRo1,
             swrValue1:variables.swrValue1 ,
             thetaRo2:variables.thetaRo2,
             j2betaZpos:variables.j2betaZpos ,
             j2betaZpos1:variables.j2betaZpos1,
             rcvalue1: variables.rcvalue1,
           ),),);

       });
     }

     else {}
   }
}







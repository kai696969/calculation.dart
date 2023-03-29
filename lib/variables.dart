import 'package:extended_math/extended_math.dart';
import 'package:flutter/cupertino.dart';

class Variables {                                                                                                                             
  Complex j = Complex(re: 0, im: 1);
  double pi = 3.14159265359;
  double realZL = 0;
  double imaginaryZL = 0;
  double realZo = 0;
  double imaginaryZo = 0;
  var zlvalue = Complex(re: 0, im: 0);
  var zlvalue1 = Complex(re: 0, im:  0);
  var zovalue = Complex(re: 0, im: 0);
  var zovalue1 = Complex(re: 0, im: 0);
  var rctop = Complex(re:0 , im:0);                           // to calculate rctop value
  var rctop1 = Complex(re:0 , im:0);                         // to display rctop value
  var rcbtm = Complex(re:0 , im:0);                          // to calculate rcbtm value
  var rcbtm1 = Complex(re:0 , im:0);                        // to display rcbtm value
  var rcvalue = Complex(re:0 , im:0);                       // to calculate rcvalue  using ZL and ZO
  var rcvalue1 = Complex(re:0 , im:0);                      // to display rcvalue calculate using ZL and ZO
  double beta = 0;                                                     //input
  double zPosition = 0;                                             //input
  double SWR = 0;                                                   //input
  double thetaRc = 0;                                               //input
  double thetaRo = 0;                                                //input
  double swrValue = 0;                                               // to calculate SWR
  double swrValue1 = 0;                                             // to display SWR
  double thetaRo1 = 0;                                               // to calculate Ro
  double thetaRo2 = 0;                                               // to display Ro
  var rcUsingSwr = Complex(re:0 , im:0);                  // to calculate rcUsingSwr
  var rcUsingSwr1 = Complex(re:0 , im:0);                // to display rcUsingSwr
  var j2betaZpos  = Complex(re:0 , im:0);                 // to calculate j2betaZpos
  var j2betaZpos1 = Complex(re:0 , im:0);                 // to display j2betaZpos
  var rcAtz  = Complex(re:0 , im:0);                            // to calculate rc@z
  var rcAtz1  = Complex(re:0 , im:0);                         // to display rc@z
  double tanbetaz = 0;
  double  tanbetaz1 = 0;
  var zIn  = Complex(re:0 , im:0);                             // to calculate zIn
  var zIn1  = Complex(re:0 , im:0);                           // to display zIn
  var zIntop  = Complex(re:0 , im:0);                        // to calculate zIntop
  var zIntop1  = Complex(re:0 , im:0);                       // to display zIntop
  var zInbtm  = Complex(re:0 , im:0);                       // to calculate zInbtm
  var zInbtm1  = Complex(re:0 , im:0);                      // to display zInbtm1
  var zInusingRczTop  = Complex(re:0 , im:0);
  var zInusingRczTop1  = Complex(re:0 , im:0);
  var zInusingRczBtm  = Complex(re:0 , im:0);
  var zInusingRczBtm1  = Complex(re:0 , im:0);
  var zInusingRcz = Complex(re:0 , im:0);
  var zInusingRcz1 = Complex(re:0 , im:0);
  double phaseVelocity = 0;                                       // input
  double omega = 0;                                                 // input
  double lambda = 0;                                                // input
  double freq =0;                                                       //input
  double Vg = 0;                                                        // input
  double Zg = 0;                                                        //input
  var voplus = Complex(re:0 , im:0);
  var voplus1 = Complex(re:0 , im:0);
  var vominus = Complex(re:0 , im:0);
  var vominus1 = Complex(re:0 , im:0);
  var vatzvalue = Complex(re:0 , im:0);
  var vatzvalue1 = Complex(re:0 , im:0);
  var vatzvaluee = Complex(re:0 , im:0);
  var vatzvaluee1 = Complex(re:0 , im:0);
  var iatzvalue = Complex(re:0 , im:0);
  var iatzvalue1 = Complex(re:0 , im:0);
  var Vin = Complex(re:0 , im:0);
  var Vin1 = Complex(re:0 , im:0);
  var ZgoverZinplusZg =  Complex(re:0 , im:0);
  var ZgoverZinplusZg1 = Complex(re:0 , im:0);
  var jbetaZpos1 = Complex(re:0 , im:0);
  var jbetaZpos = Complex(re:0 , im:0);
  double power = 0;
  double power1 =0;
  double powerr = 0;
  double powerr1 =0;
  TextEditingController reZL = TextEditingController(text: '');
  TextEditingController imZL = TextEditingController(text: '');
  TextEditingController reZo = TextEditingController(text: '');
  TextEditingController imZo = TextEditingController(text: '');
  TextEditingController betaa = TextEditingController(text: '');
  TextEditingController zPos = TextEditingController(text: '');
  TextEditingController swr = TextEditingController(text: '');
  TextEditingController thetaRcc = TextEditingController(text: '');
  TextEditingController thetaRoo = TextEditingController(text: '');
  TextEditingController uP = TextEditingController(text: '');
  TextEditingController w = TextEditingController(text: '');
  TextEditingController lambdaa = TextEditingController(text: '');
  TextEditingController Freq = TextEditingController(text: '');
  TextEditingController Vgg = TextEditingController(text: '');
  TextEditingController Zgg = TextEditingController(text: '');
  static final Variables _singleton = Variables._internal();

  factory Variables() {
    return _singleton;
  }

  Variables._internal();
}

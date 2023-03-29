import 'package:extended_math/extended_math.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_v1/variables.dart';


void executeRc(BuildContext context, Variables variables) {
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

}

void executeRc1(BuildContext context, Variables variables)
{
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

}

void executeRc2(BuildContext context, Variables variables)
{
  variables.beta = double.parse(variables.betaa.text);
variables.zPosition = double.parse(variables.zPos.text);
variables.SWR = double.parse(variables.swr.text);
variables.thetaRc = double.parse(variables.thetaRcc.text);
variables.thetaRo = double.parse(variables.thetaRoo.text);
final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
variables.swrValue1 = swrValue;
final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
variables.thetaRo2 = thetaRo1;
final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
variables.rcUsingSwr1 = rcUsingSwr;
variables.rcvalue1 = variables.rcUsingSwr1;
}


void executeRczremaining(BuildContext context, Variables variables)
{
  final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
  variables.j2betaZpos1 = j2betaZpos;
  final rcAtz = variables.rcvalue1 * variables.j2betaZpos1 ;
  variables.rcAtz1 = rcAtz;
  print(variables.rcAtz1);




}



void executezIn(BuildContext context, Variables variables)
{
      variables.realZL = double.parse(variables.reZL.text);
      variables.imaginaryZL = double.parse(variables.imZL.text);
      variables.realZo = double.parse(variables.reZo.text);
      variables.imaginaryZo = double.parse(variables.imZo.text);
      variables.beta = double.parse(variables.betaa.text);
      variables.zPosition = double.parse(variables.zPos.text);
      final tanbetaz = tan(variables.beta * -variables.zPosition);
      final j = Complex(re: 0, im: 1);
      final zlvalue = Complex(re: variables.realZL, im: variables.imaginaryZL);
      final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
      final zIntop = (zlvalue + (zovalue * j *(tanbetaz)));
      final zInbtm = (zovalue + (zlvalue * j * (tanbetaz)));
      final zIn = (zIntop / zInbtm) * (zovalue);
      variables.tanbetaz1 = tanbetaz;
      variables.zlvalue1 = zlvalue;
      variables.zovalue1 = zovalue;
      variables.zIntop1 = zIntop;
      variables.zInbtm1 = zInbtm;
      variables.zIn1 = zIn;
      final rctop = ((zlvalue) - (zovalue));
      final rcbtm = ((zlvalue) + (zovalue));
      final rcvalue = rctop / rcbtm;
      variables.rcvalue1 = rcvalue;
      variables.rctop1 = rctop;
      variables.rcbtm1 = rcbtm;
      executezInsame(context, Variables());

}

void executezIn1(BuildContext context, Variables variables)
{
  variables.realZo = double.parse(variables.reZo.text);
variables.imaginaryZo = double.parse(variables.imZo.text);
variables.beta = double.parse(variables.betaa.text);
variables.zPosition = double.parse(variables.zPos.text);
variables.SWR = double.parse(variables.swr.text);
variables.thetaRc = double.parse(variables.thetaRcc.text);
variables.thetaRo = double.parse(variables.thetaRoo.text);
final zovalue = Complex(re: variables.realZo, im: variables.imaginaryZo);
variables.zovalue1 = zovalue;
final swrValue = ((variables.SWR - 1) / (1 + variables.SWR));
final thetaRo1 = variables.thetaRc - 2 * variables.beta * variables.zPosition;
final rcUsingSwr = Complex(re: swrValue * cos(thetaRo1), im: swrValue * sin(thetaRo1));
variables.rcUsingSwr1 = rcUsingSwr;
variables.rcvalue1 = variables.rcUsingSwr1;
variables.swrValue1 = swrValue;
variables.thetaRo2 = thetaRo1;
  executezInsame(context, Variables());

}



void executezInsame (BuildContext context , Variables variables)
{
  final j2betaZpos = Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
  final rcAtz = variables.rcvalue1 * Complex(re: cos(2 * variables.zPosition * variables.beta), im: sin(2 * variables.zPosition * variables.beta));
  variables.j2betaZpos1 = j2betaZpos;
  variables.rcAtz1 = rcAtz;
  final zInusingRczTop = Complex(re:1 , im:0)+variables.rcAtz1;
  final zInusingRczBtm = Complex(re:1 , im:0) - variables.rcAtz1;
  variables.zInusingRczTop1 = zInusingRczTop;
  variables.zInusingRczBtm1 = zInusingRczBtm;
  final zInusingRcz = ((variables.zInusingRczTop1)/(variables.zInusingRczBtm1)) * (variables.zovalue1);
  variables.zInusingRcz1 = zInusingRcz;
}

void executevoPlus(BuildContext context, Variables variables)
{
  executevIn(context, Variables());
  final jbetaZpos = Complex(re: cos( -variables.zPosition * variables.beta), im: sin( -variables.zPosition * variables.beta));
  variables.jbetaZpos1 = jbetaZpos;
  final voplus = (variables.Vin1)/((variables.jbetaZpos1)*(variables.zInusingRczTop1));
  variables.voplus1 = voplus;
}

void executevoMinus(BuildContext context, Variables variables) {
  executevoPlus(context, Variables());
  final vominus = variables.voplus1 * variables.rcvalue1;
  variables.vominus1 = vominus;
}

void executevIn(BuildContext context, Variables variables)
{
       executeRc(context, Variables());
      executezInsame(context, Variables());
       variables.Vg = double.parse(variables.Vgg.text);
       variables.Zg = double.parse(variables.Zgg.text);
       final ZgoverZinplusZg = ((variables.zInusingRcz1)/(variables.zInusingRcz1+variables.Zg));
       variables.ZgoverZinplusZg1 = ZgoverZinplusZg;
      final Vin = variables.ZgoverZinplusZg1*variables.Vg;
      variables.Vin1 = Vin;
}

void executePower1(BuildContext context, Variables variables)
{
  executeRc(context, Variables());
  executezInsame(context, Variables());
  variables.Vg = double.parse(variables.Vgg.text);
  variables.Zg = double.parse(variables.Zgg.text);

}

void executevZ(BuildContext context, Variables variables)
{
  executeRc(context, Variables());
  executezInsame(context, Variables());
  executevIn(context, Variables());
  variables.Vg = double.parse(variables.Vgg.text);
  variables.Zg = double.parse(variables.Zgg.text);
  final vatzvalue = variables.voplus1 *  variables.jbetaZpos1 *  variables.zInusingRczTop1 ;
  variables.vatzvalue1 =vatzvalue;
  print(variables.vatzvalue1);
}






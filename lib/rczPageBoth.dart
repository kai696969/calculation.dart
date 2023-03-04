import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/rcdescription.dart';
import 'package:fyp_v1/variables.dart';


class rczPageBoth extends StatelessWidget {
  final variables = Variables();

  rczPageBoth({
    required j, required imaginaryZL, required realZL, required realZo, required imaginaryZo, required rcvalue1,
    required zovalue, required zlvalue, required zovalue1, required zlvalue1, required rcbtm, required rctop,
    required rcbtm1, required rctop1, required beta, required zPosition, required SWR, required rcUsingSwr1, required thetaRc,
    required thetaRo, required swrValue, required thetaRo1, required swrValue1, required thetaRo2, required j2betaZpos,
    required j2betaZpos1, required rcAtz, required rcAtz1,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reflection Coefficient at ${variables.zPosition} m ',style:TextStyle(color: Colors.black ),),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.only(left: 10.0, right: 10.0 , top: 30.0),
            child: Container(
              height: 5000,
              width: 500,
              child:  Column(
                children: [
                  rcMethod12var(variables),
                  Text(" \n Result:  ${variables.rcAtz1.re.toStringAsFixed(3)} + ${variables.rcAtz1.im.toStringAsFixed(3)}j \n  "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                  ExpansionTile(
                    title: Text('More',style:TextStyle(color: Colors.black ),),
                    backgroundColor: Colors.grey[200],
                    collapsedBackgroundColor: Colors.yellow[300],
                    children: [
                      rczMethod(variables)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





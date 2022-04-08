import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../bloc/BlocEvent/LoginEvent.dart';
import '../mainBody.dart';
import 'page0.dart';
import '../data/global.dart';
import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody3();
  }
}

class Page3Body extends StatelessWidget {
  const Page3Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: const Text("PAGE 3"),
      ),
    );
  }
}

class testbody3 extends StatelessWidget {
  const testbody3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      CuPage = Page4();
      CuPageLV = 1;
      CuPageINT = 1;
      MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
    });

    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              // InkWell(
              //   onTap: () {
              //     // CuPage = Page1();
              //     // CuPageLV = 1;
              //     // CuPageINT = 1;
              //     // MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
              //   },
              //   child:

              //   Container(
              //     height: 45,
              //     width: 390,
              //     //color: Colors.white,
              //     decoration: const BoxDecoration(
              //       color: Colors.white,
              //       image: DecorationImage(
              //         image: AssetImage("assets/images/p1-top.PNG"),
              //         fit: BoxFit.fitHeight,
              //       ),
              //       // borderRadius: BorderRadius.all(Radius.circular(24.0)),
              //     ),
              //   ),
              // ),

              Container(
                height: 700,
                width: 390,
                // color: Colors.red,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/p3-m.PNG"),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // InkWell(
              //   child: Container(
              //     height: 60,
              //     width: 390,
              //     // color: Colors.red,
              //     decoration: const BoxDecoration(
              //       color: Colors.white,
              //       image: DecorationImage(
              //         image: AssetImage("assets/images/p2-but.PNG"),
              //         fit: BoxFit.fitWidth,
              //       ),
              //       borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //     ),
              //   ),
              // ),

              // Container(
              //   height: 500,
              //   width: 390,
              //   color: Colors.yellow,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

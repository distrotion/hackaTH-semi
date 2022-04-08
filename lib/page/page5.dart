import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../mainBody.dart';
import 'page0.dart';
import '../data/global.dart';
import 'page6.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody5();
  }
}

class Page5Body extends StatelessWidget {
  const Page5Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.deepOrange,
        child: const Text("PAGE 5"),
      ),
    );
  }
}

class testbody5 extends StatelessWidget {
  const testbody5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 3), () {
    //   CuPage = Page4();
    //   CuPageLV = 1;
    //   CuPageINT = 1;
    //   MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
    // });

    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 3000,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                height: 2800,
                width: 390,
                // color: Colors.red,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/p5-all.PNG"),
                    fit: BoxFit.fitWidth,
                  ),
                  // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),

              InkWell(
                onTap: () {
                  CuPage = Page6();
                  CuPageLV = 1;
                  CuPageINT = 3;
                  MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
                },
                child: Container(
                  height: 60,
                  width: 390,
                  // color: Colors.red,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/p6-but.PNG"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),

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

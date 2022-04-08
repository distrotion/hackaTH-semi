import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacka_th/page/page7.dart';
import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../mainBody.dart';
import 'page0.dart';
import '../data/global.dart';
import 'page9.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody6();
  }
}

class Page6Body extends StatelessWidget {
  const Page6Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
    );
  }
}

class testbody6 extends StatelessWidget {
  const testbody6({Key? key}) : super(key: key);

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
          height: 800,
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Container(
                height: 45,
                width: 390,
                //color: Colors.white,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/p4-top.PNG"),
                    fit: BoxFit.fitHeight,
                  ),
                  // borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
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
                height: 600,
                width: 390,
                // color: Colors.red,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/p7-main.PNG"),
                    fit: BoxFit.fitHeight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  CuPage = Page9();
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
                      image: AssetImage("assets/images/p7-but.PNG"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
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

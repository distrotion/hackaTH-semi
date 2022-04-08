import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacka_th/page/page3.dart';

import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../data/global.dart';
import '../mainBody.dart';
import '../styles/TextStyle.dart';
import '../widget/common/ComInputText.dart';
import 'page0.dart';
import '../data/global.dart';
import 'page1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody2();
    ;
  }
}

bool undercontroltap2 = false;
String SpacialAccText2 = '';

// class Page2Body extends StatelessWidget {
//   const Page2Body({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 100,
//         width: 100,
//         color: Colors.blue,
//         child: const Text("PAGE 2"),
//       ),
//     );
//   }
// }
class testbody2 extends StatelessWidget {
  const testbody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              InkWell(
                onTap: () {
                  CuPage = Page1();
                  CuPageLV = 1;
                  CuPageINT = 1;
                  MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
                },
                child: Container(
                  height: 45,
                  width: 390,
                  //color: Colors.white,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/p1-top.PNG"),
                      fit: BoxFit.fitHeight,
                    ),
                    // borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                ),
              ),

              Container(
                height: 600,
                width: 390,
                // color: Colors.red,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/P2-m.PNG"),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              InkWell(
                onTap: () {
                  CuPage = Page3();
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
                      image: AssetImage("assets/images/p2-but.PNG"),
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

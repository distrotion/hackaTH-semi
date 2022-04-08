import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacka_th/page/page7.dart';
import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../mainBody.dart';
import '../styles/TextStyle.dart';
import '../widget/common/Easyslideshow.dart';
import 'page0.dart';
import '../data/global.dart';
import 'page2.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody8();
  }
}

class Page8Body extends StatelessWidget {
  const Page8Body({Key? key}) : super(key: key);

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

class p1test extends StatelessWidget {
  const p1test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
        child: const Text("PAGE 2"),
      ),
    );
    ;
  }
}

class testbody8 extends StatelessWidget {
  const testbody8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 1000,
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
                    image: AssetImage("assets/images/p1-top.PNG"),
                    fit: BoxFit.fitHeight,
                  ),
                  // borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 80,
                width: 390,
                child: Text(
                  "How are you\nfeeling ?",
                  style: TxtStyleBlackBGC(),
                ),
                // color: Colors.red,
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 390,
                // color: Colors.red,
                child: Text(
                  "Symptom Diagnostic",
                  style: TxtStyleBlackBGC2(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  CuPage = Page2();
                  CuPageLV = 1;
                  CuPageINT = 1;
                  MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
                },
                child: Container(
                  height: 150,
                  width: 390,

                  // color: Colors.red,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/p1-2.PNG"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 390,
                // color: Colors.red,
                child: Text(
                  "My Program",
                  style: TxtStyleBlackBGC2(),
                ),
              ),
              InkWell(
                onTap: () {
                  CuPage = Page7();
                  CuPageLV = 1;
                  CuPageINT = 1;
                  MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
                },
                child: Container(
                  height: 150,
                  width: 390,

                  // color: Colors.red,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/p9-tt.PNG"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 390,
                // color: Colors.red,
                child: Text(
                  "Popolar Program",
                  style: TxtStyleBlackBGC2(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                // width: 390,
                // color: Colors.green,
                // child: const Text("PAGE 1"),
                child: EasySlideShow(),
              ),
              const SizedBox(
                height: 10,
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../mainBody.dart';
import '../styles/TextStyle.dart';
import '../widget/common/ComInputText.dart';
import '../widget/common/Easyslideshow2.dart';
import 'page0.dart';
import '../data/global.dart';
import 'page5.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody4();
  }
}

class Page4Body extends StatelessWidget {
  const Page4Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        child: const Text("PAGE 4"),
      ),
    );
  }
}

class testbody4 extends StatelessWidget {
  const testbody4({Key? key}) : super(key: key);

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

              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // CuPage = Page5();
                  // CuPageLV = 1;
                  // CuPageINT = 1;
                  // MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
                },
                child: Container(
                  height: 150,
                  width: 390,

                  // color: Colors.red,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/p4-1.PNG"),
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
                  "We suggest you:",
                  style: TxtStyleBlackBGC2(),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: 450,
                // width: 550,
                // color: Colors.green,
                // child: const Text("PAGE 1"),
                child: EasySlideShow2(),
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

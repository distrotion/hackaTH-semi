import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../page/page5.dart';

class EasySlideShow2 extends StatelessWidget {
  const EasySlideShow2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
              onTap: () {
                CuPage = Page5();
                CuPageLV = 1;
                CuPageINT = 1;
                MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
              },
              child: Con1()),
          // SizedBox(
          //   width: 20,
          // ),
          Con2(),
          // SizedBox(
          //   width: 20,
          // ),
          Con3(),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class Con1 extends StatelessWidget {
  const Con1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/p4-2-1.JPG"),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}

class Con2 extends StatelessWidget {
  const Con2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/p4-2-2.JPG"),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}

class Con3 extends StatelessWidget {
  const Con3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/p4-2-1.JPG"),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}

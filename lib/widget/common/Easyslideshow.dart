import 'package:flutter/material.dart';

class EasySlideShow extends StatelessWidget {
  const EasySlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Con1(),
          SizedBox(
            width: 20,
          ),
          Con2(),
          SizedBox(
            width: 20,
          ),
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
      height: 180,
      width: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/p1-3-1.JPG"),
          fit: BoxFit.fitWidth,
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
      height: 180,
      width: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/p1-3-2.JPG"),
          fit: BoxFit.fitWidth,
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
      height: 180,
      width: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/p1-3-1.JPG"),
          fit: BoxFit.fitWidth,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}

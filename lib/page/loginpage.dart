import 'dart:async';

import 'package:flutter/material.dart';
//--------------------------------------------- Bloc
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/LoginEvent.dart';
import '../mainBody.dart';
import '../styles/TextStyle.dart';

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      LoginContext.read<Login_Bloc>().add(LoginPage());
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 94, 138, 132),
      body: Container(
        decoration: const BoxDecoration(
            // color: const Color(0x005e8a84),

            // image: DecorationImage(
            //   image: AssetImage(""),
            //   fit: BoxFit.fitWidth,
            // ),
            //borderRadius: BorderRadius.all(Radius.circular(24.0)),
            ),
        child: Center(
          child: SingleChildScrollView(
              child: SizedBox(
            height: 844,
            width: 390,
            child: Column(
              children: [
                // Expanded(
                //     child: SizedBox(
                //   height: 40,
                //   child: Text("LOGO"),
                // )),
                SizedBox(
                  height: 300,
                ),

                // SizedBox(height: 40, child: Text("LOGO")),
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    // color: Colors.white,

                    image: DecorationImage(
                      image: AssetImage("assets/images/logo-demo.png"),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                ),
                Spacer(),
                const SizedBox(
                  child: Text(
                    "nicetynine",
                    style: TxtStyleBlackBG(),
                  ),
                )
                // Padding(
                //     padding: EdgeInsetsDirectional.only(start: 10, end: 10),
                //     child: _LoginSignin()),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class _LoginSignin extends StatelessWidget {
  const _LoginSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // BlocProvider.of<SwPageCubit>(context).togglePage("Page1");
          LoginContext.read<Login_Bloc>().add(LoginPage());
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              "Sign IN",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
          ),
        ));
  }
}


// Card(
//               color: Colors.red,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               child: const Padding(
//                 padding: EdgeInsetsDirectional.only(),
//                 child: _LoginSignin(),
                // child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const SizedBox(
                //       height: 50,
                //     ),
                //     Container(
                //       height: 100,
                //       // width: 300,
                //       // decoration: const BoxDecoration(
                //       //   // color: Colors.red,
                //       //   image: DecorationImage(
                //       //     image: AssetImage("assets/images/logo_tpk.png"),
                //       //     fit: BoxFit.none,
                //       //   ),
                //       // ),
                //     ),
                //     const SizedBox(
                //       height: 20,
                //     ),
                //     // SizedBox(
                //     //   height: 40,
                //     //   child: TextFormField(
                //     //     onChanged: (value) {},
                //     //     initialValue: "",
                //     //     decoration: InputDecoration(
                //     //       contentPadding: EdgeInsets.all(8),
                //     //       hintText: 'TPK ID',
                //     //       hintStyle: const TextStyle(
                //     //         fontFamily: 'Mitr',
                //     //         color: Color(0xffb2b2b2),
                //     //         fontSize: 14,
                //     //         fontWeight: FontWeight.w300,
                //     //         fontStyle: FontStyle.normal,
                //     //         letterSpacing: 0,
                //     //       ),
                //     //       border: OutlineInputBorder(
                //     //         borderSide:
                //     //             const BorderSide(color: Colors.red, width: 1),
                //     //         borderRadius: BorderRadius.circular(8),
                //     //       ),
                //     //       // suffixIcon: Icon(
                //     //       //   Icons.search,
                //     //       // ),
                //     //     ),
                //     //   ),
                //     // ),
                //     // const SizedBox(
                //     //   height: 20,
                //     // ),
                //     // SizedBox(
                //     //   height: 40,
                //     //   child: TextFormField(
                //     //     onChanged: (value) {},
                //     //     obscureText: true,
                //     //     initialValue: "",
                //     //     decoration: InputDecoration(
                //     //       contentPadding: const EdgeInsets.all(8),
                //     //       hintText: 'Password',
                //     //       hintStyle: const TextStyle(
                //     //         fontFamily: 'Mitr',
                //     //         color: Color(0xffb2b2b2),
                //     //         fontSize: 14,
                //     //         fontWeight: FontWeight.w300,
                //     //         fontStyle: FontStyle.normal,
                //     //         letterSpacing: 0,
                //     //       ),
                //     //       border: OutlineInputBorder(
                //     //         borderSide:
                //     //             const BorderSide(color: Colors.red, width: 1),
                //     //         borderRadius: BorderRadius.circular(8),
                //     //       ),

                //     //       // suffixIcon: Icon(
                //     //       //   Icons.search,
                //     //       // ),
                //     //     ),
                //     //   ),
                //     // ),
                //     // const SizedBox(
                //     //   height: 20,
                //     // ),
                //     const _LoginSignin(),
                //     // SizedBox(
                //     //   height: 50,
                //     // ),
                //   ],
                // ),
            //   ),
            // ),
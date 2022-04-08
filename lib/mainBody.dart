import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/BlocEvent/ChangePageEvent.dart';
import 'bloc/BlocEvent/LoginEvent.dart';
import 'bloc/cubit/NotificationEvent.dart';
import 'bloc/cubit/Rebuild.dart';
import 'data/global.dart';
import 'page/loginpage.dart';
import 'page/page1.dart';
import 'page/page2.dart';
import 'page/page3.dart';
import 'page/page4.dart';
import 'page/page5.dart';
import 'widget/appbar/AppBar.dart';
import 'widget/menu/mainmenu.dart';
import 'widget/notification/noti01.dart';

//-------------------------------------

late BuildContext MainBodyContext;
late BuildContext LoginContext;

class MainBlocRebuild extends StatelessWidget {
  const MainBlocRebuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
      return BlocProvider(
          create: (_) => Login_Bloc(),
          child: BlocBuilder<Login_Bloc, String>(
            builder: (context, tokenin) {
              return BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
                return BlocProvider(
                    create: (_) => BlocNotification(),
                    child: BlocBuilder<BlocNotification, NotificationState>(
                      builder: (context, notification) {
                        contextGB = context;
                        return Stack(
                          children: [
                            pre_login(),
                            // Positioned(
                            //     top: 64,
                            //     right: 24,
                            //     child: BlocBuilderNotification()),
                          ],
                        );
                      },
                    ));
              });
            },
          ));
    });
  }
}

class pre_login extends StatefulWidget {
  const pre_login({Key? key}) : super(key: key);

  @override
  State<pre_login> createState() => _pre_loginState();
}

class _pre_loginState extends State<pre_login> {
  @override
  void initState() {
    super.initState();
    context.read<Login_Bloc>().add(ReLogin());
    // print("initState");
  }

  @override
  Widget build(BuildContext context) {
    LoginContext = context;
    if (token != '') {
      return BlocProvider(
          create: (_) => ChangePage_Bloc(),
          child: BlocBuilder<ChangePage_Bloc, Widget>(
            builder: (context, page) {
              return MainBody(page: page);
            },
          ));
    } else {
      return const Loginbody();
    }
  }
}

int _selectedIndex = 0;

class MainBody extends StatelessWidget {
  MainBody({Key? key, required this.page}) : super(key: key);
  Widget page;

  @override
  Widget build(BuildContext context) {
    MainBodyContext = context;

    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFF0b1327),
        //   actions: <Widget>[App_Bar()],
        // ),
        drawer: MainMenu(),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsetsDirectional.only(bottom: 40, start: 15, end: 15),
          child: Container(
            height: 60,
            // color: Colors.red,
            // child: Container(),
            decoration: const BoxDecoration(
              color: Colors.white,

              image: DecorationImage(
                image: AssetImage("assets/images/menu.PNG"),
                fit: BoxFit.fitWidth,
              ),
              //borderRadius: BorderRadius.all(Radius.circular(24.0)),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,

            // image: DecorationImage(
            //   image: AssetImage(""),
            //   fit: BoxFit.fitWidth,
            // ),
            //borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 35),
            child: page,
          ),
        ));
  }
}

class Loginbody extends StatelessWidget {
  const Loginbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPageWidget();
  }
}

// BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'PAGE 1',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.business),
//               label: 'PAGE 2',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.school),
//               label: 'PAGE 3',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.school),
//               label: 'PAGE 4',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.school),
//               label: 'PAGE 5',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.grey,
//           onTap: _onItemTapped,
//         ),

//  Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     CuPage = Page1();
//                     CuPageLV = 1;
//                     CuPageINT = 1;
//                     context.read<ChangePage_Bloc>().add(ChangePage());
//                   },
//                   child: Container(
//                       height: 40,
//                       width: 40,
//                       // color: CuPageINT == 1 ? Colors.blueAccent : Colors.green,
//                       child: Icon(Icons.settings)),
//                 ),
//                 InkWell(
//                     onTap: () {
//                       CuPage = Page2();
//                       CuPageLV = 1;
//                       CuPageINT = 2;
//                       context.read<ChangePage_Bloc>().add(ChangePage());
//                     },
//                     child: Container(
//                         height: 40,
//                         width: 40,
//                         color:
//                             CuPageINT == 2 ? Colors.blueAccent : Colors.green)),
//                 InkWell(
//                     onTap: () {
//                       CuPage = Page3();
//                       CuPageLV = 1;
//                       CuPageINT = 3;
//                       context.read<ChangePage_Bloc>().add(ChangePage());
//                     },
//                     child: Container(
//                         height: 40,
//                         width: 40,
//                         color:
//                             CuPageINT == 3 ? Colors.blueAccent : Colors.green)),
//                 InkWell(
//                     onTap: () {
//                       CuPage = Page4();
//                       CuPageLV = 1;
//                       CuPageINT = 4;
//                       context.read<ChangePage_Bloc>().add(ChangePage());
//                     },
//                     child: Container(
//                         height: 40,
//                         width: 40,
//                         color:
//                             CuPageINT == 4 ? Colors.blueAccent : Colors.green)),
//                 InkWell(
//                     onTap: () {
//                       CuPage = Page5();
//                       CuPageLV = 1;
//                       CuPageINT = 5;
//                       context.read<ChangePage_Bloc>().add(ChangePage());
//                     },
//                     child: Container(
//                         height: 40,
//                         width: 40,
//                         color:
//                             CuPageINT == 5 ? Colors.blueAccent : Colors.green)),
//               ],
//             ),
import 'package:bottom_animation/source/bottomnav_item.dart';
import 'package:bottom_animation/source/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'DC_Movies/DcMovies.dart';
import 'DC_Movies/More_info.dart';
import 'Marvel/List_Files_Images.dart';
import 'Marvel/Marvel_Page.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var items = <BottomNavItem>[
    BottomNavItem(title: 'Marvel', iconData: CupertinoIcons.heart),
    BottomNavItem(title: '  DC', iconData: CupertinoIcons.heart),
    BottomNavItem(
        title: '  More', iconData: CupertinoIcons.ellipsis_vertical_circle),
  ];

  var cIndex;
  @override
  void initState() {
    cIndex = 0;
    super.initState();
  }

  List<Widget> Pages = [MarvelPage(), DcMovies(), More_info()];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.redAccent);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar,
        body: Pages.elementAt(cIndex),
        bottomNavigationBar: BottomAnimation(
          selectedIndex: cIndex,
          items: items,
          backgroundColor: Colors.redAccent,
          onItemSelect: (value) {
            setState(() {
              cIndex = value;
            });
          },
          itemHoverColor: Colors.white,
          itemHoverColorOpacity: .9,
          activeIconColor: Colors.red,
          deactiveIconColor: Colors.white.withOpacity(.9),
          textStyle: TextStyle(
            color: Colors.black,
            fontFamily: "Marvel",
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          itemHoverWidth: 125,
          itemHoverHeight: 40,
          itemHoverBorderRadius: 40,
          barHeight: 60,
        ),
      ),
    );
  }
}

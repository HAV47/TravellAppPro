import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/representation/screens/home_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  static const routeName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _curentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _curentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _curentIndex,
        onTap: (index){
          setState(() {
            _curentIndex = index;
          });
        },
        unselectedItemColor: ColorPalatte.primaryColor.withOpacity(0.2),
        selectedItemColor: ColorPalatte.primaryColor,
        margin: EdgeInsets.symmetric(horizontal: kMediumPadding,vertical: kDefaultPadding),
        items: [
          SalomonBottomBarItem(
              icon:Icon (
                FontAwesomeIcons.house,
              ),
              title: Text('Home')
          ),
          SalomonBottomBarItem(
              icon:Icon (
                FontAwesomeIcons.solidHeart,
              ),
              title: Text('Like')
          ),
          SalomonBottomBarItem(
              icon:Icon (
                FontAwesomeIcons.briefcase,
              ),
              title: Text('Bokking')
          ),
          SalomonBottomBarItem(
              icon:Icon (
                FontAwesomeIcons.solidUser,
              ),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}

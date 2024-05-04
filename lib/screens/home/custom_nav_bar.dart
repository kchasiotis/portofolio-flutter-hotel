import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  MenuItem({required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Color bottonNavBgColor = Color(0xff0C1015);

class CustomNavBar extends StatefulWidget {
  static int _selectedIndex = 0;

  const CustomNavBar({super.key});

  @override
  CustomNavBarState createState() => CustomNavBarState();
}

class CustomNavBarState extends State<CustomNavBar> {
  void _onItemTapped(int index) {
    setState(() {
      CustomNavBar._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: 90,
      //TODO: In Future remove the height
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: bottonNavBgColor.withOpacity(0.9),
        border: Border(top: BorderSide(color: Colors.white.withOpacity(0.2))),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: bottonNavBgColor.withOpacity(0.3),
            offset: const Offset(0, 20),
            blurRadius: 20,
          ),
        ],
      ),
      // TODO: Animated Icons,
      child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'images/nav_bar/home-cropped.svg',
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      'home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              MenuItem(
                icon: 'images/nav_bar/message-question.svg',
                text: 'inbox',
              ),
              MenuItem(
                icon: 'images/nav_bar/heart.svg',
                text: 'favourites',
              ),
              MenuItem(
                icon: 'images/nav_bar/profile.svg',
                text: 'profile',
              ),
            ],
          )),
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
import 'package:finalproject/account.dart';
import 'package:finalproject/camera.dart';
import 'package:finalproject/homepage.dart';
import 'package:finalproject/settings.dart';
import 'package:flutter/material.dart';
class botnavbar extends StatefulWidget {
  const botnavbar({super.key});

  @override
  State<botnavbar> createState() => _botnavbarState();
}

class _botnavbarState extends State<botnavbar> {
  int currentIndexy=0;
  List screens=[
    Myhome(),camera(),account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
             label: 'home',
             ),
             
             BottomNavigationBarItem(
            icon:Icon(Icons.camera_enhance_outlined),
             label: 'camera',
             ),
             BottomNavigationBarItem(
            icon:Icon(Icons.account_circle),
             label: 'profile',
             )  
        ],
        backgroundColor: Colors.indigo,
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20.0,
        selectedIconTheme: IconThemeData(color: Colors.black,size: 30),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,

        ),
        unselectedFontSize: 20.0,
        unselectedIconTheme: IconThemeData(color: Colors.grey,size: 20.0),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
      ),
      currentIndex:0,
      onTap: (index){
        setState(() {
          currentIndexy=index;
        });
        
      },
    ),
    body: screens[currentIndexy],
    );


  }
}
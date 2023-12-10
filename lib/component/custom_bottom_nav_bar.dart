import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var grey = const Color.fromRGBO(113, 113, 113, 1);

    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      iconSize: 40,
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: grey,),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: Icon(Icons.grid_view,
            color: grey),
          label: 'Profil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble, color: grey,),
          label: 'Paramètres',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                image: AssetImage('assets/profile_photo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          label: 'Paramètres',
        ),

      ],
    );
  }
}

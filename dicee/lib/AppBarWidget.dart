import 'package:flutter/material.dart';
import 'package:dicee/HomePage.dart';
import 'package:dicee/SettingsPage.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Center(child: Text("Dicee")),
      backgroundColor: Colors.transparent,
      elevation: 0, //Retirar fundo escuro
      leading: IconButton(
        splashColor: Colors.transparent, //Remove Splash
        highlightColor: Colors.transparent, //Remove Splash
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        }),
        icon: Icon(Icons.home),
      ),
      actions: [
        IconButton(
          splashColor: Colors.transparent, //Remove Splash
          highlightColor: Colors.transparent, //Remove Splash
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsPage()));
          }),
          icon: Icon(Icons.dark_mode),
        ),
      ],
    );
  }
}

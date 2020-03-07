//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/avatar.dart';
import 'package:my_flutter_app/widgets/bottom_menu.dart';
import 'package:my_flutter_app/widgets/cronometro.dart';
import 'package:flutter/cupertino.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnabled = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        items: [
          BottonMenuItem(iconPath: 'assets/icons/home.svg', label: 'Home'),
          BottonMenuItem(
              iconPath: 'assets/icons/Historial.svg', label: 'Historial'),
          BottonMenuItem(
              iconPath: 'assets/icons/ofertas.svg', label: 'Ofertas'),
          BottonMenuItem(iconPath: 'assets/icons/perfil.svg', label: 'Perfil'),
        ],
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Avatar(),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Bienvenido'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Luis Avila',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  _isEnabled == true
                      ? Cronometer(
                          initTime: 0,
                          fontSize: _fontSize,
                        )
                      : Container(),
                  SizedBox(
                    height: 30,
                  ),
                  CupertinoButton(
                      child: Text('enabled: $_isEnabled'), onPressed: (){
                        setState(() {
                          _isEnabled = !_isEnabled;
                        });
                      }, color: Colors.lightBlue, )
                ])),
      )
      /*child: Text(
          'Bienvenido',
          style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(color: Colors.deepPurple, blurRadius: 20, offset:Offset(10,20))
              ]
              ),
        ),
        child: CircleContainer(
            child: SvgPicture.asset(
              'assets/icons/money.svg',
              height: 200,
              width: 200,
            ),
            height: 400,
            width: 1000),*/
      ,
    );
  }
}

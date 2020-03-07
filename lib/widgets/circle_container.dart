import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  final double size;

  CircleContainer(
      {@required this.child, @required this.size})
      : assert(child != null),
       assert(size!= null && size >= 50 );
      

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      child: Center(
        child: this.child,
      ),
      decoration: BoxDecoration(
          color: Color(0xffD2B4DE),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Color(0xff666699), blurRadius: 7, offset: Offset(5, 8))
          ]),
    );
  }
}

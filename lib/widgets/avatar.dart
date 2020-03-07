import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.network(
              'https://image.flaticon.com/icons/svg/1674/1674298.svg'),
          Positioned(
              child: CircleContainer(
              child: Icon(Icons.edit),
            size: 50,
          ),
          right: 0,
          top: 0,),
        ],
      ),
    );
  }
}

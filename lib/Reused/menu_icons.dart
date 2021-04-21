import 'package:flutter/material.dart';

import 'colors.dart';

class MenueIcon extends StatelessWidget {
  final Widget iconSrc;
  final Function press;
  const MenueIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     // onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: LightColor,
          ),
          shape: BoxShape.circle,
          color: LightColor,
        ),

        child: IconButton(
            icon: iconSrc,
            onPressed: press,
        ) ,
      ),
    );
  }
}

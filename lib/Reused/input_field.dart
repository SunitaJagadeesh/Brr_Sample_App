import 'package:flutter/material.dart';

import 'colors.dart';

class RoundedInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final bool obscure;
  const RoundedInputField({
    Key key,
    this.controller,
    this.hintText,
    this.icon,
    this.onChanged,
    this.obscure
  }) : super(key: key);

  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.obscure,
        cursorColor: DarkColor,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: DarkColor,
          ),
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: LightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}



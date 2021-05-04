import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key key,
    this.icon,
    this.pholder,
  }) : super(key: key);

  final Icon icon;
  final String pholder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      decoration: InputDecoration(
        hintText: pholder,
        prefixIcon: icon,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white70,
        enabledBorder: UnderlineInputBorder(
          // borderRadius: BorderRadius.all(Radius.circular(12.0)),

          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
      ),
    );
  }
}

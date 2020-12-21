import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  CustomButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Theme.of(context).accentColor,
        padding: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: this.onPressed,
        child: Text(
          this.text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

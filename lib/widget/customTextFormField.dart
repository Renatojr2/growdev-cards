import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinText;
  final IconData icon;
  final void Function(String) onSaved;

  const CustomTextFormField({this.hinText, this.icon, this.onSaved});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        cursorColor: Colors.white,
        onSaved: onSaved,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white),
          ),
          contentPadding: EdgeInsets.all(20),
          hintText: hinText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          suffixIcon: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

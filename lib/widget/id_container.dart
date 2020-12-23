import 'package:flutter/material.dart';

class IdContainer extends StatelessWidget {
  final int id;

  const IdContainer({this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          id.toString(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

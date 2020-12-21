import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.add),
        ],
        title: Text('Cards'),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          child: Container(
            child: Column(
              children: [
                Text('card'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

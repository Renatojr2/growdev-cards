import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'id_container.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final int id;
  final Function() onEdit;
  final Function() onDelete;

  const CardWidget(
      {this.title, this.subtitle, this.id, this.onEdit, this.onDelete});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.topCenter,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 3,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Theme.of(context).accentColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IdContainer(
                      id: id,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Colors.black,
                  height: 20,
                  thickness: 1,
                ),
                Expanded(
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                ),
                Row(
                  children: [
                    FlatButton(
                      highlightColor: Theme.of(context).accentColor,
                      onPressed: onEdit,
                      child: Text('Editar'),
                    ),
                    FlatButton(
                      highlightColor: Theme.of(context).accentColor,
                      onPressed: onDelete,
                      child: Text('Excluir'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

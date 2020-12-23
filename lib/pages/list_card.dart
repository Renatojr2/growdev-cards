import 'package:flutter/material.dart';
import 'package:growdevcards/models/custom_card.dart';
import 'package:growdevcards/models/remote_user_token.dart';
import 'package:growdevcards/services/api.dart';
import 'package:growdevcards/widget/card_widget.dart';
import 'package:provider/provider.dart';

class ListCard extends StatefulWidget {
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  var api = Api();
  List<CustomCard> cards;
  @override
  void initState() {
    cards = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserToken>(context);
    api.getCard(userProvider.token.token).then((value) => cards = value);

    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.add),
          )
        ],
        title: Text('Cards'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: cards.map(
            (card) {
              return CardWidget(
                id: card.id,
                title: card.title,
                subtitle: card.content,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

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
  String token;

  void _getcard(String token) async {
    var value = await api.getCard(token);
    print(value);
    if (value != null) {
      setState(
        () {
          cards = value;
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    cards = [];
  }

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserToken>(context);
    token = userProvider.token.token;
    print('renderizou');
    try {
      _getcard(token);
    } catch (e) {
      print('error');
      print(e);
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: InkWell(
              radius: 15,
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                Navigator.of(context).pushNamed('/createCard');
              },
              child: Icon(Icons.add),
            ),
          )
        ],
        title: Text('Cards'),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: cards == null
              ? [
                  Center(
                    child: Text('Não há cards por aqui'),
                  )
                ]
              : cards.map(
                  (card) {
                    return CardWidget(
                      id: card.id,
                      title: card.title,
                      subtitle: card.content,
                      onEdit: () {},
                      onDelete: () async {
                        var res = await api.deletarCards(card.id, token);
                        // print(res);
                        setState(() {});
                      },
                    );
                  },
                ).toList(),
        ),
      ),
    );
  }
}

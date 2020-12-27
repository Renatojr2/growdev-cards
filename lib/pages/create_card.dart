import 'package:flutter/material.dart';
import 'package:growdevcards/models/custom_card.dart';
import 'package:growdevcards/models/remote_user_token.dart';
import 'package:growdevcards/services/api.dart';
import 'package:growdevcards/widget/customButton.dart';
import 'package:provider/provider.dart';

class CreateCards extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final CustomCard card = CustomCard();

  @override
  Widget build(BuildContext context) {
    var userToken = Provider.of<UserToken>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Card:Novo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  onSaved: (newValue) => card.title = newValue,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (newValue) => card.content = newValue,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .35,
                ),
                CustomButton(
                  text: 'Salvar',
                  onPressed: () async {
                    _form.currentState.save();
                    await Api().insereCards(card, userToken.token.token);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

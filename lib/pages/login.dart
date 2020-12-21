import 'package:flutter/material.dart';
import 'package:growdevcards/models/remote_user_token.dart';
import 'package:growdevcards/pages/list_card.dart';
import 'package:growdevcards/services/api.dart';
import 'package:growdevcards/services/login_params.dart';
import 'package:growdevcards/services/token.dart';
import 'package:growdevcards/widget/customButton.dart';
import 'package:growdevcards/widget/form_widget.dart';
import 'package:growdevcards/widget/logo.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> form = GlobalKey<FormState>();
  LoginParams loginParams;
  AuthToken token;

  @override
  void initState() {
    super.initState();
    loginParams = LoginParams();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .86,
            width: double.infinity,
            color: Theme.of(context).primaryColorLight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      logo(),
                      SizedBox(
                        height: 35,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Novo por aqui? ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                              text: 'Crie sua conta aqui',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      FormWidget(
                        form,
                        loginParams: loginParams,
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.white30,
                            child: Checkbox(
                              fillColor: MaterialStateProperty.all(
                                Color.fromRGBO(255, 255, 255, .01),
                              ),
                              value: true,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Mantenha-me conectado',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      CustomButton(
                        text: 'Entrar',
                        onPressed: () async {
                          form.currentState.save();
                          UserToken res = await Api().login(loginParams);
                          if (res.token != null) {
                            await Navigator.of(context)
                                .pushReplacementNamed('/listCard');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

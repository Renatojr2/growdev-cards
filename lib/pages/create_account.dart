import 'package:flutter/material.dart';
import 'package:growdevcards/widget/customButton.dart';
import 'package:growdevcards/widget/customTextFormField.dart';
import 'package:growdevcards/widget/logo.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .86,
            width: double.infinity,
            color: Theme.of(context).primaryColorLight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      logo(),
                      SizedBox(
                        height: 100,
                      ),
                      Form(
                        child: Column(
                          children: [
                            CustomTextFormField(
                              hinText: 'Nome',
                              icon: Icons.person,
                              onSaved: (value) {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              hinText: 'E-mail',
                              icon: Icons.email,
                              onSaved: (value) {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              hinText: 'Password',
                              icon: Icons.visibility,
                              onSaved: (value) {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomButton(
                        text: 'Criar conta',
                        onPressed: () {},
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

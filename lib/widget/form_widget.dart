import 'package:flutter/material.dart';
import 'package:growdevcards/models/login_params.dart';
import 'package:growdevcards/widget/customTextFormField.dart';

class FormWidget extends StatelessWidget {
  final LoginParams loginParams;
  final GlobalKey<FormState> _form;

  FormWidget(this._form, {this.loginParams});

  void savedEmail(String email) {
    if (email != null) {
      loginParams.email = email;
    }
  }

  void savedPassword(String password) {
    loginParams.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        children: [
          CustomTextFormField(
            hinText: 'E-mail',
            icon: Icons.email,
            onSaved: savedEmail,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hinText: 'Password',
            icon: Icons.visibility_off,
            onSaved: savedPassword,
          ),
        ],
      ),
    );
  }
}

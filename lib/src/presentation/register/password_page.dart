import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/presentation/mixins/dialog_mixin.dart';
import 'package:auto_club/src/actions/auth/index.dart';

class PasswordPage extends StatelessWidget with DialogMixin {
  const PasswordPage({Key key}) : super(key: key);

  void _onResponse(BuildContext context, AppAction action) {
    if (action is RegisterSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is RegisterError) {
      showError(context, 'Register error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password'),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onChanged: (String value) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(password: value));
                        },
                        validator: (String value) {
                          if (value.length < 6) {
                            return 'Please enter a better password';
                          }

                          return null;
                        },
                      ),
                    ),
                    // const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<AppState>(context).dispatch(Register((AppAction action) {
                              _onResponse(context, action);
                            }));
                          }
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Divider(),
                    Text.rich(
                      TextSpan(text: 'Already have an account? ', children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                              }),
                      ]),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

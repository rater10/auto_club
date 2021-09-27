import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class NamePage extends StatelessWidget {
  const NamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username'),
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
                    RegisterInfoContainer(
                      builder: (BuildContext context, RegisterInfo info) {
                        return Container(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                            ),
                            keyboardType: TextInputType.name,
                            initialValue: info.email.split('@')[0],
                            onChanged: (String value) {
                              StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(username: value));
                            },
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter username';
                              }

                              return null;
                            },
                          ),
                        );
                      },
                    ),
                    // const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            Navigator.pushNamed(context, AppRoutes.birthDate);
                          }
                        },
                        child: const Text(
                          'Continue',
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

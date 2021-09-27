import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/mixins/dialog_mixin.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shimmer/shimmer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  String _email = '';
  String _password = '';

  void _response(AppAction action) {
    if (action is LoginError) {
      showError(context, 'Login error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Login'),
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
                    Shimmer.fromColors(
                      child: Container(
                        child: const Text(
                          'Auto Club',
                          style: TextStyle(
                            fontSize: 64.0,
                            fontFamily: 'Pacifico',
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 18.0,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ),
                      baseColor: const Color(0xffba000d),
                      highlightColor: const Color(0xfff44336),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value) {
                          _email = value;
                        },
                        validator: (String value) {
                          if (!value.contains('@') || !value.contains('.')) {
                            return 'Please enter a valid email';
                          }

                          return null;
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onChanged: (String value) {
                          _password = value;
                        },
                        validator: (String value) {
                          if (value.length < 6) {
                            return 'Please try a stronger password.';
                          }

                          return null;
                        },
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.resetPassword);
                          },
                          child: const Text(
                            'Reset password',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      color: Colors.redAccent,
                      onPressed: () {
                        if (Form.of(context).validate()) {
                          StoreProvider.of<AppState>(context).dispatch(
                            Login(
                              email: _email,
                              password: _password,
                              response: _response,
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    const Spacer(),
                    const Divider(),
                    Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register now',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, AppRoutes.register);
                              },
                          ),
                        ],
                      ),
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

import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/mixins/dialog_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> with DialogMixin {
  String _email = '';

  void showAlertDialog(BuildContext context) {
    final Dialog alert = Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 256,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 64, 8, 8),
                child: Column(
                  children: <Widget>[
                    if (_email == null || _email.isEmpty || !_email.contains('@') || !_email.contains('.'))
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: const Text(
                          'Attention!',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                          textAlign: TextAlign.center,
                        ),
                      )
                    else
                      const Text(
                        'Succeed!',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (_email == null || _email.isEmpty || !_email.contains('@') || !_email.contains('.'))
                      Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: const Text(
                          'You need to provide a valid email address!',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    else
                      Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'We sent a password reset link at $_email',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    const Spacer(),
                    RaisedButton(
                      onPressed: () {
                        // ignore: always_specify_types
                        Navigator.of(context).popUntil((Route route) => route.isFirst);
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                      color: Colors.redAccent,
                      child: const Text(
                        'OK',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -60,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 60,
                child: _email == null || _email.isEmpty || !_email.contains('@') || !_email.contains('.')
                    ? const Icon(
                        Icons.error,
                        color: Colors.white,
                        size: 50,
                      )
                    : const Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 50,
                      ),
              ),
            ),
          ],
        ));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset password'),
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
                      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                      child: const Text(
                        'Enter your email and you will receive a link to reset your Auto Club account password',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextFormField(
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
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(ForgotPassword(_email));
                          showAlertDialog(context);
                        },
                        child: const Text(
                          'Reset password',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
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

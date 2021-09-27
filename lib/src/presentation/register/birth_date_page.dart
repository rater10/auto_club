import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/containers/index.dart';
import 'package:auto_club/src/models/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';

class BirthDatePage extends StatelessWidget {
  const BirthDatePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birth Date'),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RegisterInfoContainer(
              builder: (BuildContext context, RegisterInfo info) {
                final DateTime birthDate = info.birthDate ?? DateTime.now();
                final DateFormat format = DateFormat.yMMMMd();
                final int years = DateTime.now().difference(birthDate).inDays ~/ 365;

                return Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                      child: const Text(
                        'Let other people know your age',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        cupertinoOverrideTheme: const CupertinoThemeData(
                          textTheme: CupertinoTextThemeData(
                            primaryColor: Colors.white,
                          ),
                        ),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .20,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime.now(),
                          maximumDate: DateTime.now(),
                          onDateTimeChanged: (DateTime value) {
                            StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(birthDate: value.toUtc()));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Container(
                        constraints: const BoxConstraints.expand(height: 48.0),
                        child: OutlineButton(
                          onPressed: () {},
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(format.format(birthDate)),
                                ),
                              ),
                              Text(
                                '$years ${years == 1 ? 'year' : 'years'} old',
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.location);
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
            )),
      ),
    );
  }
}

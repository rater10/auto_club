import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/mixins/init_mixin.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shimmer/shimmer.dart';

void main() => runApp(const AutoClub());

class AutoClub extends StatefulWidget {
  const AutoClub({Key key}) : super(key: key);

  @override
  _AutoClubState createState() => _AutoClubState();
}

class _AutoClubState extends State<AutoClub> with InitMixin<AutoClub> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data;

          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'AutoClub',
              theme: ThemeData.light(),
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          return MaterialApp(
            title: 'AutoClub',
            home: Scaffold(
              body: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                    ),
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
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

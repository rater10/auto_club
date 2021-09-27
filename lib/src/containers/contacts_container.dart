import 'package:auto_club/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/models/comments/comment.dart';
import 'package:redux/redux.dart';

class ContactsContainer extends StatelessWidget {
  const ContactsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) {
        return store.state.auth.contacts.asMap();
      },
      builder: builder,
    );
  }
}

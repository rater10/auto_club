import 'package:auto_club/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/models/chats/chat.dart';
import 'package:redux/redux.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Chat> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Chat>(
      converter: (Store<AppState> store) {
        return store.state.chats.chats[store.state.chats.selectedChatId];
      },
      builder: builder,
    );
  }
}

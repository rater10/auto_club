import 'package:auto_club/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/models/chats/message.dart';
import 'package:redux/redux.dart';

class MessagesContainer extends StatelessWidget {
  const MessagesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Message>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Message>>(
      converter: (Store<AppState> store) {
        return store.state.chats.messages.values
            .where((Message message) => message.chatId == store.state.chats.selectedChatId)
            .toList()
              ..sort();
      },
      builder: builder,
    );
  }
}

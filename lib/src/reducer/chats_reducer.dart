import 'package:auto_club/src/actions/chats/create_chat.dart';
import 'package:auto_club/src/actions/chats/listen_for_chats.dart';
import 'package:auto_club/src/actions/chats/listen_for_messages.dart';
import 'package:auto_club/src/actions/chats/set_selected_chat.dart';
import 'package:auto_club/src/models/chats/chat.dart';
import 'package:auto_club/src/models/chats/chats_state.dart';
import 'package:auto_club/src/models/chats/message.dart';
import 'package:redux/redux.dart';

Reducer<ChatsState> chatsReducer = combineReducers<ChatsState>(<Reducer<ChatsState>>[
  TypedReducer<ChatsState, CreateChatSuccessful>(_createChatSuccessful),
  TypedReducer<ChatsState, OnChatEvent>(_onChatEvent),
  TypedReducer<ChatsState, OnMessagesEvent>(_onMessagesEvent),
  TypedReducer<ChatsState, SetSelectedChat>(_setSelectedChat),
]);

ChatsState _createChatSuccessful(ChatsState state, CreateChatSuccessful action) {
  return state.rebuild((ChatsStateBuilder b) => b.selectedChatId = action.chat.id);
}

ChatsState _onChatEvent(ChatsState state, OnChatEvent action) {
  return state.rebuild((ChatsStateBuilder b) {
    for (Chat chat in action.chats) {
      b.chats[chat.id] = chat;
    }
  });
}

ChatsState _onMessagesEvent(ChatsState state, OnMessagesEvent action) {
  return state.rebuild((ChatsStateBuilder b) {
    for (Message message in action.messages) {
      b.messages[message.id] = message;
    }
  });
}

ChatsState _setSelectedChat(ChatsState state, SetSelectedChat action) {
  return state.rebuild((ChatsStateBuilder b) {
    b.selectedChatId = action.chatId;
  });
}

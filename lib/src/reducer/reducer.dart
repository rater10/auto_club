import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/reducer/auth_reducer.dart';
import 'package:auto_club/src/reducer/chats_reducer.dart';
import 'package:auto_club/src/reducer/comments_reducer.dart';
import 'package:auto_club/src/reducer/likes_reducer.dart';
import 'package:auto_club/src/reducer/post_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  print(action);
  return state.rebuild((AppStateBuilder b) {
    b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..posts = postReducer(state.posts, action).toBuilder()
      ..comments = commentsReducer(state.comments, action).toBuilder()
      ..likes = likesReducer(state.likes, action).toBuilder()
      ..chats = chatsReducer(state.chats, action).toBuilder();
  });
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return AppState.initialState();
}

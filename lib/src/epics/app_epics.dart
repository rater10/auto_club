import 'package:auto_club/src/actions/actions.dart' as actionss;
import 'package:auto_club/src/actions/chats/listen_for_chats.dart';
import 'package:auto_club/src/actions/initialize_app.dart';
import 'package:auto_club/src/data/auth_api.dart';
import 'package:auto_club/src/data/chats_api.dart';
import 'package:auto_club/src/data/comments_api.dart';
import 'package:auto_club/src/data/likes_api.dart';
import 'package:auto_club/src/data/post_api.dart';
import 'package:auto_club/src/epics/auth_epics.dart';
import 'package:auto_club/src/epics/chats_epics.dart';
import 'package:auto_club/src/epics/comments_epics.dart';
import 'package:auto_club/src/epics/likes_epics.dart';
import 'package:auto_club/src/epics/post_epics.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics(
      {@required AuthApi authApi, @required PostApi postApi, @required CommentsApi commentsApi, @required LikesApi likesApi, @required ChatsApi chatsApi,})
      : assert(authApi != null),
        assert(postApi != null),
        assert(commentsApi != null),
        assert(likesApi != null),
        _authApi = authApi,
        _postApi = postApi,
        _commentsApi = commentsApi,
        _likesApi = likesApi,
        _chatsApi = chatsApi;

  final AuthApi _authApi;
  final PostApi _postApi;
  final CommentsApi _commentsApi;
  final LikesApi _likesApi;
  final ChatsApi _chatsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp>(_initializeApp),
      AuthEpics(api: _authApi).epics,
      PostEpics(postApi: _postApi).epics,
      CommentsEpics(commentsApi: _commentsApi).epics,
      LikesEpics(likesApi: _likesApi).epics,
      ChatsEpics(chatsApi: _chatsApi).epics,
    ]);
  }

  Stream<actionss.AppAction> _initializeApp(Stream<InitializeApp> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp action) => _authApi
        .initializeApp()
        .asStream()
        .expand<actionss.AppAction>((AppUser user) => <actionss.AppAction>[
      InitializeAppSuccessful(user),
      if (user != null) ListenForChats(),
    ])
        .onErrorReturnWith((dynamic error) => InitializeAppError(error)));
  }
}

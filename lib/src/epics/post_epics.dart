import 'package:auto_club/src/actions/auth/get_contact.dart';
import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/actions/likes/get_likes.dart';
import 'package:auto_club/src/actions/posts/create_post.dart';
import 'package:auto_club/src/actions/posts/listen_for_posts.dart';
import 'package:auto_club/src/data/post_api.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/models/posts/post.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PostEpics {
  const PostEpics({
    @required PostApi postApi,
  })  : assert(postApi != null),
        _postApi = postApi;

  final PostApi _postApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreatePost>(_createPost),
      _listenForPosts,
    ]);
  }

  Stream<AppAction> _createPost(Stream<CreatePost> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreatePost action) => _postApi
        .create(
          uid: store.state.auth.user.uid,
          description: store.state.posts.savePostInfo.description,
          pictures: store.state.posts.savePostInfo.pictures.toList(),
        )
        .asStream()
        .map<AppAction>((Post post) => CreatePostSuccessful(post))
        .onErrorReturnWith((dynamic error) => CreatePostError(error))
        .doOnData(action.result));
  }

  Stream<AppAction> _listenForPosts(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForPosts>().flatMap((ListenForPosts action) => _postApi
        .listen(action.uid)
        .expand<AppAction>((List<Post> posts) => <AppAction>[
              OnPostsEvent(posts),
              ...posts
                  .where((Post post) => store.state.auth.contacts[post.uid] == null)
                  .map((Post post) => GetContact(post.uid))
                  .toSet(),
              ...posts
                  .where((Post post) => store.state.likes.posts[post.id] == null)
                  .map((Post post) => GetLikes(post.id))
                  .toSet(),
            ])
        .takeUntil(actions
            .whereType<StopListeningForPosts>()
            .where((StopListeningForPosts stopAction) => stopAction.uid == action.uid))
        .onErrorReturnWith((dynamic error) => ListenForPostsError(error)));
  }
}

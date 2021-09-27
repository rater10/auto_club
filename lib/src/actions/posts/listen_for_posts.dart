library listen_for_posts;

import 'package:auto_club/src/actions/actions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:auto_club/src/models/posts/post.dart';

part 'listen_for_posts.g.dart';

abstract class ListenForPosts
    implements
        Built<ListenForPosts, ListenForPostsBuilder>,
        AppAction
{
  factory ListenForPosts(String uid) {
    return _$ListenForPosts((ListenForPostsBuilder b) => b.uid = uid);
  }

  ListenForPosts._();

  String get uid;
}

abstract class StopListeningForPosts
    implements
        Built<StopListeningForPosts, StopListeningForPostsBuilder>,
        AppAction
{
  factory StopListeningForPosts(String uid) {
    return _$StopListeningForPosts((StopListeningForPostsBuilder b) => b.uid = uid);
  }

  StopListeningForPosts._();

  String get uid;
}

abstract class OnPostsEvent
    implements
        Built<OnPostsEvent, OnPostsEventBuilder>,
        AppAction
{
  factory OnPostsEvent(List<Post> posts) {
    return _$OnPostsEvent((OnPostsEventBuilder b) => b.posts = ListBuilder<Post>(posts));
  }

  OnPostsEvent._();

  BuiltList<Post> get posts;
}

abstract class ListenForPostsError
    implements
        Built<ListenForPostsError, ListenForPostsErrorBuilder>,
        AppAction,
        ErrorAction
{
  factory ListenForPostsError(Object error) {
    return _$ListenForPostsError((ListenForPostsErrorBuilder b) => b.error = error);
  }

  ListenForPostsError._();

  @override
  Object get error;
}

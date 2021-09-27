library create_post;

import 'package:auto_club/src/actions/actions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:auto_club/src/models/posts/post.dart';

part 'create_post.g.dart';

abstract class CreatePost
    implements
        Built<CreatePost, CreatePostBuilder>,
        AppAction
{
  factory CreatePost(ActionResponse result) {
    return _$CreatePost((CreatePostBuilder b) {
      b.result = result;
    });
  }

  CreatePost._();

  ActionResponse get result;
}

abstract class CreatePostSuccessful
    implements
        Built<CreatePostSuccessful, CreatePostSuccessfulBuilder>,
        AppAction
{
  factory CreatePostSuccessful(Post post) {
    return _$CreatePostSuccessful((CreatePostSuccessfulBuilder b) {
      b.post = post.toBuilder();
    });
  }

  CreatePostSuccessful._();

  Post get post;
}

abstract class CreatePostError
    implements
        Built<CreatePostError, CreatePostErrorBuilder>,
        ErrorAction
{
  factory CreatePostError(Object error) {
    return _$CreatePostError((CreatePostErrorBuilder b) => b.error = error);
  }

  CreatePostError._();

  @override
  Object get error;
}

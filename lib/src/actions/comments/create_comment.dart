library create_comment;

import 'package:auto_club/src/actions/actions.dart';
import 'package:built_value/built_value.dart';
import 'package:auto_club/src/models/comments/comment.dart';

part 'create_comment.g.dart';

abstract class CreateComment
    implements
        Built<CreateComment, CreateCommentBuilder>,
        AppAction
{
  factory CreateComment(String text, ActionResponse result) {
    return _$CreateComment((CreateCommentBuilder b) {
      b
        ..text = text
        ..result = result;
    });
  }

  CreateComment._();

  String get text;

  ActionResponse get result;
}

abstract class CreateCommentSuccessful
    implements
        Built<CreateCommentSuccessful, CreateCommentSuccessfulBuilder>,
        AppAction
{
  factory CreateCommentSuccessful(Comment comment) {
    return _$CreateCommentSuccessful((CreateCommentSuccessfulBuilder b) {
      b.comment = comment.toBuilder();
    });
  }

  CreateCommentSuccessful._();

  Comment get comment;
}

abstract class CreateCommentError
    implements
        Built<CreateCommentError, CreateCommentErrorBuilder>,
        ErrorAction
{
  factory CreateCommentError(Object error) {
    return _$CreateCommentError((CreateCommentErrorBuilder b) => b.error = error);
  }

  CreateCommentError._();

  @override
  Object get error;
}

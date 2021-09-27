library delete_like;

import 'package:auto_club/src/actions/actions.dart';
import 'package:built_value/built_value.dart';
import 'package:auto_club/src/models/likes/like_type.dart';
import 'package:meta/meta.dart';

part 'delete_like.g.dart';

abstract class DeleteLike
    implements
        Built<DeleteLike, DeleteLikeBuilder>,
        AppAction
{
  factory DeleteLike({
    @required String likeId,
    @required String parentId,
    @required LikeType type,
  }) {
    return _$DeleteLike((DeleteLikeBuilder b) {
      b
        ..likeId = likeId
        ..parentId = parentId
        ..type = type;
    });
  }

  DeleteLike._();

  String get likeId;

  String get parentId;

  LikeType get type;
}

abstract class DeleteLikeSuccessful
    implements
        Built<DeleteLikeSuccessful, DeleteLikeSuccessfulBuilder>,
        AppAction
{
  factory DeleteLikeSuccessful({
    @required String likeId,
    @required String parentId,
    @required LikeType type,
  }) {
    return _$DeleteLikeSuccessful((DeleteLikeSuccessfulBuilder b) {
      b
        ..likeId = likeId
        ..parentId = parentId
        ..type = type;
    });
  }

  DeleteLikeSuccessful._();

  String get likeId;

  String get parentId;

  LikeType get type;
}

abstract class DeleteLikeError
    implements
        Built<DeleteLikeError, DeleteLikeErrorBuilder>,
        ErrorAction
{
  factory DeleteLikeError(Object error) {
    return _$DeleteLikeError((DeleteLikeErrorBuilder b) => b.error = error);
  }

  DeleteLikeError._();

  @override
  Object get error;
}

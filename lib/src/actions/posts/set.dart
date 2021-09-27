library set;

import 'package:auto_club/src/actions/actions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'set.g.dart';

abstract class SetSelectedPost
    implements
        Built<SetSelectedPost, SetSelectedPostBuilder>,
        AppAction
{
  factory SetSelectedPost(String postId) {
    return _$SetSelectedPost((SetSelectedPostBuilder b) => b.postId = postId);
  }

  SetSelectedPost._();

  String get postId;
}

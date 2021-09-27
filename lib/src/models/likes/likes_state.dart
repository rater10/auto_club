library likes_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:auto_club/src/models/likes/like.dart';
import 'package:auto_club/src/models/serializers.dart';

part 'likes_state.g.dart';

abstract class LikesState implements Built<LikesState, LikesStateBuilder> {
  factory LikesState([void Function(LikesStateBuilder b) updates]) = _$LikesState;

  factory LikesState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  LikesState._();

  BuiltMap<String, BuiltList<Like>> get posts;

  BuiltMap<String, BuiltList<Like>> get comments;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<LikesState> get serializer => _$likesStateSerializer;
}

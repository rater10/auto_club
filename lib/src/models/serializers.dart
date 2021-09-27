library serializers;

import 'package:auto_club/src/models/chats/chat.dart';
import 'package:auto_club/src/models/chats/chats_state.dart';
import 'package:auto_club/src/models/chats/message.dart';
import 'package:auto_club/src/models/comments/comment.dart';
import 'package:auto_club/src/models/comments/comments_state.dart';
import 'package:auto_club/src/models/likes/like.dart';
import 'package:auto_club/src/models/likes/like_type.dart';
import 'package:auto_club/src/models/likes/likes_state.dart';
import 'package:auto_club/src/models/posts/post.dart';
import 'package:auto_club/src/models/posts/posts_state.dart';
import 'package:auto_club/src/models/posts/save_post_info.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppUser,
  AuthState,
  Chat,
  ChatsState,
  RegisterInfo,
  Comment,
  CommentsState,
  Like,
  LikeType,
  LikesState,
  Message,
  Post,
  PostsState,
  SavePostInfo,
])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

library update_post_info;

import 'package:auto_club/src/actions/actions.dart';
import 'package:built_value/built_value.dart';
import 'package:auto_club/src/models/posts/save_post_info.dart';

part 'update_post_info.g.dart';

abstract class UpdatePostInfo
    implements
        Built<UpdatePostInfo, UpdatePostInfoBuilder>,
        AppAction
{
  factory UpdatePostInfo(SavePostInfo info) {
    return _$UpdatePostInfo((UpdatePostInfoBuilder b) => b.info = info.toBuilder());
  }

  UpdatePostInfo._();

  SavePostInfo get info;
}

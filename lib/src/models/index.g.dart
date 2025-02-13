// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(PostsState)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(CommentsState)),
      'likes',
      serializers.serialize(object.likes,
          specifiedType: const FullType(LikesState)),
      'chats',
      serializers.serialize(object.chats,
          specifiedType: const FullType(ChatsState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(PostsState)) as PostsState);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(CommentsState)) as CommentsState);
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(LikesState)) as LikesState);
          break;
        case 'chats':
          result.chats.replace(serializers.deserialize(value,
              specifiedType: const FullType(ChatsState)) as ChatsState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final PostsState posts;
  @override
  final CommentsState comments;
  @override
  final LikesState likes;
  @override
  final ChatsState chats;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.auth, this.posts, this.comments, this.likes, this.chats})
      : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('AppState', 'auth');
    }
    if (posts == null) {
      throw new BuiltValueNullFieldError('AppState', 'posts');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError('AppState', 'comments');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('AppState', 'likes');
    }
    if (chats == null) {
      throw new BuiltValueNullFieldError('AppState', 'chats');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        posts == other.posts &&
        comments == other.comments &&
        likes == other.likes &&
        chats == other.chats;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, auth.hashCode), posts.hashCode), comments.hashCode),
            likes.hashCode),
        chats.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('posts', posts)
          ..add('comments', comments)
          ..add('likes', likes)
          ..add('chats', chats))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  PostsStateBuilder _posts;
  PostsStateBuilder get posts => _$this._posts ??= new PostsStateBuilder();
  set posts(PostsStateBuilder posts) => _$this._posts = posts;

  CommentsStateBuilder _comments;
  CommentsStateBuilder get comments =>
      _$this._comments ??= new CommentsStateBuilder();
  set comments(CommentsStateBuilder comments) => _$this._comments = comments;

  LikesStateBuilder _likes;
  LikesStateBuilder get likes => _$this._likes ??= new LikesStateBuilder();
  set likes(LikesStateBuilder likes) => _$this._likes = likes;

  ChatsStateBuilder _chats;
  ChatsStateBuilder get chats => _$this._chats ??= new ChatsStateBuilder();
  set chats(ChatsStateBuilder chats) => _$this._chats = chats;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _posts = _$v.posts?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _likes = _$v.likes?.toBuilder();
      _chats = _$v.chats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              posts: posts.build(),
              comments: comments.build(),
              likes: likes.build(),
              chats: chats.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'posts';
        posts.build();
        _$failedField = 'comments';
        comments.build();
        _$failedField = 'likes';
        likes.build();
        _$failedField = 'chats';
        chats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

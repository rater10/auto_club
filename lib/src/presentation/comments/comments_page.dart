import 'package:auto_club/src/containers/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/actions/comments/create_comment.dart';
import 'package:auto_club/src/actions/comments/listen_for_comments.dart';
import 'package:auto_club/src/actions/likes/create_like.dart';
import 'package:auto_club/src/actions/likes/delete_like.dart';
import 'package:auto_club/src/containers/comments_container.dart';
import 'package:auto_club/src/containers/comments_likes_container.dart';
import 'package:auto_club/src/containers/contacts_container.dart';
import 'package:auto_club/src/containers/selected_post_container.dart';
import 'package:auto_club/src/models/comments/comment.dart';
import 'package:auto_club/src/models/likes/like.dart';
import 'package:auto_club/src/models/likes/like_type.dart';
import 'package:auto_club/src/models/posts/post.dart';
import 'package:redux/redux.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key key}) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final TextEditingController controller = TextEditingController();
  Store<AppState> store;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(ListenForComments());
    });
  }

  void _result(dynamic action) {
    if (action is CreateCommentSuccessful) {
      controller.clear();
    }
  }

  @override
  void dispose() {
    store.dispatch(StopListenForComments());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContactsContainer(
      builder: (BuildContext context, Map<String, AppUser> contacts) {
        return SelectedPostContainer(
          builder: (BuildContext context, Post post) {
            return Scaffold(
              appBar: AppBar(
                title: Text(contacts[post.uid].username),
                backgroundColor: Colors.redAccent,
              ),
              body: Column(
                children: <Widget>[
                  Container(
                    color: Colors.black87,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(post.pictures.first,
                      ),
                    ),
                  ),
                  Flexible(
                    child: UserContainer(
                      builder: (BuildContext context, AppUser currentUser) {
                        return CommentsLikesContainer(
                          builder: (BuildContext context, BuiltMap<String, BuiltList<Like>> likes) {
                            return CommentsContainer(
                              builder: (BuildContext context, List<Comment> comments) {
                                if (comments.isEmpty) {
                                  return const Center(
                                    child: Text('There are no comments yet'),
                                  );
                                }

                                return ListView.builder(
                                  itemCount: comments.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final Comment comment = comments[index];
                                    final AppUser user = contacts[comment.uid];
                                    final BuiltList<Like> commentLikes = likes[comment.id] ?? BuiltList<Like>();

                                    final Like currentUserLike = commentLikes
                                        .firstWhere((Like like) => like.uid == currentUser.uid, orElse: () => null);

                                    return ListTile(
                                      title: Text(user.username),
                                      subtitle: Text(comment.text),
                                      leading: ClipOval(
                                        child: Container(
                                          width: 32.0,
                                          height: 32.0,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle),
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: user.photoUrl != null
                                                ? user.photoUrl.isNotEmpty
                                                ? Image.network(user.photoUrl)
                                                : const Icon(Icons.person, color: Colors.blueGrey,)
                                                : const Icon(Icons.person, color: Colors.blueGrey,),
                                          ),
                                        ),
                                      ),
                                      trailing: Container(
                                        width: 64.0,
                                        child: Row(
                                          children: <Widget>[
                                            IconButton(
                                              icon: Icon(
                                                currentUserLike != null ? Icons.favorite : Icons.favorite_border,
                                              ),
                                              color: Colors.red,
                                              onPressed: () {
                                                if (currentUserLike != null) {
                                                  StoreProvider.of<AppState>(context).dispatch(DeleteLike(
                                                    likeId: currentUserLike.id,
                                                    parentId: currentUserLike.parentId,
                                                    type: LikeType.comment,
                                                  ));
                                                } else {
                                                  StoreProvider.of<AppState>(context)
                                                      .dispatch(CreateLike(comment.id, LikeType.comment));
                                                }
                                              },
                                            ),
                                            if (commentLikes.isNotEmpty) Text('${commentLikes.length}')
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  Form(
                    child: SafeArea(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        padding: const EdgeInsetsDirectional.only(bottom: 16.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                child: TextFormField(
                                  controller: controller,
                                  cursorColor: Colors.redAccent,
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Comment is no long enough';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  icon: const Icon(Icons.send, color: Colors.redAccent,),
                                  onPressed: () {
                                    if (Form.of(context).validate()) {
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(CreateComment(controller.text, _result));
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

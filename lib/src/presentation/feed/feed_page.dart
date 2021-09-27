import 'dart:io';
import 'dart:ui';

import 'package:auto_club/src/actions/posts/update_post_info.dart';
import 'package:auto_club/src/containers/index.dart';
import 'package:auto_club/src/containers/save_post_info_container.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/models/posts/save_post_info.dart';
import 'package:auto_club/src/presentation/profile/searched_user_profile_page.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/actions/likes/create_like.dart';
import 'package:auto_club/src/actions/likes/delete_like.dart';
import 'package:auto_club/src/actions/posts/listen_for_posts.dart';
import 'package:auto_club/src/actions/posts/set.dart';
import 'package:auto_club/src/containers/contacts_container.dart';
import 'package:auto_club/src/containers/posts_container.dart';
import 'package:auto_club/src/containers/posts_likes_container.dart';
import 'package:auto_club/src/models/likes/like.dart';
import 'package:auto_club/src/models/likes/like_type.dart';
import 'package:auto_club/src/models/posts/post.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';

class FeedPart extends StatefulWidget {
  const FeedPart({Key key}) : super(key: key);

  @override
  _FeedPartState createState() => _FeedPartState();
}

class _FeedPartState extends State<FeedPart> {
  Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _store = StoreProvider.of<AppState>(context);
      _store.state.auth.user.following //
          .map((String uid) => ListenForPosts(uid))
          .forEach(_store.dispatch);
    });
  }

  @override
  void dispose() {
    _store.state.auth.user.following //
        .map((String uid) => StopListeningForPosts(uid))
        .forEach(_store.dispatch);
    super.dispose();
  }

  void uploadImage(bool uploadFromCamera) async {
    final ImagePicker _imagePicker = ImagePicker();
    PickedFile image;
    if (uploadFromCamera) {
      image = await _imagePicker.getImage(source: ImageSource.camera);
    } else {
      image = await _imagePicker.getImage(source: ImageSource.gallery);
    }
    SavePostInfo info;
    info ??= SavePostInfo();
    info = info.rebuild((SavePostInfoBuilder b) => b.pictures.add(image.path));
    StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(info));
    Navigator.pushNamed(context, AppRoutes.postDetails);
  }

  void _showAddPostDialog(BuildContext context) {
    final Dialog alert = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: 192,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 64, 8, 8),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Add a new post',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 32.0, right: 32.0),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            uploadImage(false);
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                          color: Colors.redAccent,
                          child: const Icon(
                            Icons.photo,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                        const Spacer(),
                        RaisedButton(
                          onPressed: () {
                            uploadImage(true);
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                          color: Colors.redAccent,
                          child: const Icon(
                            Icons.photo_camera_rounded,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
              top: -45,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 45,
                child: Icon(
                  Icons.add_a_photo,
                  size: 64.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddPostDialog(context);
        },
        child: const Icon(Icons.add_a_photo),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: UserContainer(
          builder: (BuildContext context, AppUser currentUser) {
            return ContactsContainer(
              builder: (BuildContext context, Map<String, AppUser> contacts) {
                return PostsContainer(
                  builder: (BuildContext context, List<Post> posts) {
                    final DateFormat dayFormat = DateFormat.yMMMMd().add_Hm();
                    final DateFormat hourFormat = DateFormat.Hm();

                    return PostsLikesContainer(
                      builder: (BuildContext context, BuiltMap<String, BuiltList<Like>> likes) {
                        return Scaffold(
                          body: posts.isEmpty
                              ? const Center(
                                  child: Text(
                                    'Your feed is empty! Start following some people to see their posts here!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : ListView.builder(
                                  itemCount: posts.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final Post post = posts[index];
                                    final BuiltList<Like> postLikes = likes[post.id] ?? BuiltList<Like>();

                                    final Like currentUserLike = postLikes
                                        .firstWhere((Like like) => like.uid == currentUser.uid, orElse: () => null);
                                    final bool containsLike = currentUserLike != null;

                                    final AppUser user = contacts[post.uid];

                                    String date;
                                    if (DateTime.now().difference(post.createdAt) > const Duration(days: 1)) {
                                      date = dayFormat.format(post.createdAt);
                                    } else {
                                      date = hourFormat.format(post.createdAt);
                                    }

                                    return Container(
                                      height: 400,
                                      child: Column(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext context) => SearchedUserProfilePage(
                                                            searchedUser: user,
                                                          )));
                                            },
                                            child: Container(
                                              child: ListTile(
                                                title: Row(
                                                  children: <Widget>[
                                                    ClipOval(
                                                      child: Container(
                                                        width: 32.0,
                                                        height: 32.0,
                                                        decoration: const BoxDecoration(shape: BoxShape.circle),
                                                        child: FittedBox(
                                                          fit: BoxFit.cover,
                                                          child: user.photoUrl != null
                                                              ? user.photoUrl.isNotEmpty
                                                                  ? Image.network(user.photoUrl)
                                                                  : const Icon(
                                                                      Icons.person,
                                                                      color: Colors.blueGrey,
                                                                    )
                                                              : const Icon(
                                                                  Icons.person,
                                                                  color: Colors.blueGrey,
                                                                ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets.only(left: 4.0,right: 4.0),
                                                      child: Text(
                                                        user.username,
                                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                    if (user.isServiceAvailable) const Icon(
                                                      Icons.verified,
                                                      color: Colors.redAccent,
                                                    ) else Container(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onDoubleTap: () {
                                              if (containsLike) {
                                                StoreProvider.of<AppState>(context).dispatch(DeleteLike(
                                                    likeId: currentUserLike.id,
                                                    parentId: post.id,
                                                    type: LikeType.post));
                                              } else {
                                                StoreProvider.of<AppState>(context)
                                                    .dispatch(CreateLike(post.id, LikeType.post));
                                              }
                                            },
                                            child: Container(
                                              color: Colors.black12,
                                              child: AspectRatio(
                                                aspectRatio: 16 / 9,
                                                child: Image.network(
                                                  post.pictures.first,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  IconButton(
                                                    icon: Icon(
                                                      containsLike ? Icons.favorite : Icons.favorite_border,
                                                    ),
                                                    color: containsLike ? Colors.red : Colors.black,
                                                    onPressed: () {
                                                      if (containsLike) {
                                                        StoreProvider.of<AppState>(context).dispatch(DeleteLike(
                                                            likeId: currentUserLike.id,
                                                            parentId: post.id,
                                                            type: LikeType.post));
                                                      } else {
                                                        StoreProvider.of<AppState>(context)
                                                            .dispatch(CreateLike(post.id, LikeType.post));
                                                      }
                                                    },
                                                  ),
                                                  if (postLikes.isNotEmpty) Text('${postLikes.length}'),
                                                ],
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.chat_bubble_outline),
                                                color: Colors.black,
                                                onPressed: () {
                                                  StoreProvider.of<AppState>(context)
                                                      .dispatch(SetSelectedPost(post.id));
                                                  Navigator.pushNamed(context, AppRoutes.comments);
                                                },
                                              ),
                                              const Spacer(),
                                              Container(
                                                padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                                                child: Text(date),
                                              ),
                                            ],
                                          ),
                                          Row(
                                              children: <Widget>[
                                                Container(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Text(
                                                    user.username,
                                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.only(left: 4.0),
                                                  child: Text(post.description),
                                                ),
                                              ],
                                            ),
                                        ],
                                      ),
                                    );
                                  },
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
    );
  }
}

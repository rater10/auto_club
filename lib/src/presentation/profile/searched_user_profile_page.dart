import 'package:auto_club/src/actions/auth/start_following.dart';
import 'package:auto_club/src/actions/auth/stop_following.dart';
import 'package:auto_club/src/actions/chats/create_chat.dart';
import 'package:auto_club/src/actions/chats/set_selected_chat.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SearchedUserProfilePage extends StatefulWidget {
  const SearchedUserProfilePage({Key key, this.searchedUser}) : super(key: key);

  final AppUser searchedUser;

  @override
  _SearchedUserProfilePageState createState() => _SearchedUserProfilePageState();
}

class _SearchedUserProfilePageState extends State<SearchedUserProfilePage> {
  int _followersNumber = 0;
  List<String> _postUrls;
  String _chatId = '';

  @override
  void initState() {
    super.initState();
    _getFollowers();
    _getPosts();
  }

  Future<void> _getFollowers() async {
    FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot usersSnapshots = await firestoreInstance.collection('users').get();
    List<DocumentSnapshot> usersDocuments = usersSnapshots.docs;
    if (usersDocuments.isNotEmpty) {
      usersDocuments.forEach((DocumentSnapshot element) {
        if (element.data()['following'].toString().contains(widget.searchedUser.uid)) {
          setState(() {
            _followersNumber++;
          });
        }
      });
    }
  }

  Future<void> _getPosts() async {
    FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot postsSnapshots = await firestoreInstance.collection('posts').get();
    List<DocumentSnapshot> postsDocuments = postsSnapshots.docs;
    final List<String> posts = List();
    if (postsDocuments.isNotEmpty) {
      postsDocuments.forEach((DocumentSnapshot element) {
        if (element.data()['uid'].toString().contains(widget.searchedUser.uid)) {
          posts.add(
              element.data()['pictures'].toString().substring(1, element.data()['pictures'].toString().length - 1));
        }
      });
    }
    setState(() {
      _postUrls = posts;
    });
  }

  void _showGarageDialog(BuildContext context, String carsOfUser) {
    final int _numberOfCars = carsOfUser.split('/^/').length - 1;
    final List<Widget> _texts = carsOfUser
        .split('/^/')
        .map((String _car) => Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _car,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            )))
        .toList();
    final Dialog alert = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: _numberOfCars < 4 ? 256 : 512,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 64, 8, 8),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'My cars:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Center(
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: carsOfUser.split('/^/').length - 1,
                            itemBuilder: (BuildContext context, int index) {
                              return _texts.elementAt(index);
                            }),
                      ),
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
                  Icons.directions_car,
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

  Future<bool> _doesChatExists(String uid) async {
    FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
    FirebaseAuth authInstance = FirebaseAuth.instance;
    User appUser = authInstance.currentUser;
    String currentUserUid = appUser.uid;
    QuerySnapshot chatsSnapshots = await firestoreInstance.collection('chats').get();
    List<DocumentSnapshot> chatsDocuments = chatsSnapshots.docs;
    bool exists = false;
    if (chatsDocuments.isNotEmpty) {
      chatsDocuments.forEach((DocumentSnapshot element) {
        if (element.data()['users'].toString().contains(currentUserUid) && element.data()['users'].toString().contains(uid)) {
          setState(() {
            _chatId = element.id;
          });
          exists = true;
        }

      });
    }
    return exists;
  }

  Future<bool> _isSameUser(String uid) async {
    FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
    FirebaseAuth authInstance = FirebaseAuth.instance;
    User appUser = authInstance.currentUser;
    String currentUserUid = appUser.uid;
    bool isSame = false;
    if (currentUserUid == uid) {
      isSame = true;
    }
    return isSame;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.searchedUser.username.toString()),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          width: 96.0,
                          height: 96.0,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: widget.searchedUser.photoUrl != null
                                ? widget.searchedUser.photoUrl.isNotEmpty
                                    ? Image.network(widget.searchedUser.photoUrl)
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(left: 16.0, right: 4.0),
                                child: Text(
                                  widget.searchedUser.username,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ),
                              if (widget.searchedUser.isServiceAvailable) const Icon(
                                Icons.verified,
                                color: Colors.redAccent,
                              ) else Container(),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                                child: Text(
                                  _followersNumber < 9999
                                      ? _followersNumber.toString() + ' Followers'
                                      : _followersNumber.toString().substring(0, 2) + 'k Followers',
                                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                                child: Text(
                                  widget.searchedUser.following.length.toString() + ' Followings',
                                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: const Icon(
                        Icons.calendar_today,
                        size: 16.0,
                      ),),
                    Container(
                      padding: const EdgeInsets.only(left: 4.0, top: 8.0),
                      child: Text(
                        'Birth date: ' +
                            widget.searchedUser.birthDate.day.toString() +
                            '/' +
                            widget.searchedUser.birthDate.month.toString() +
                            '/' +
                            widget.searchedUser.birthDate.year.toString(),
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: const Icon(
                        Icons.location_on,
                        size: 16.0,
                      ),),
                    Container(
                      padding: const EdgeInsets.only(left: 4.0, top: 8.0),
                      child: Text(
                        widget.searchedUser.location,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                      child: OutlineButton(
                        shape: const StadiumBorder(),
                        onPressed: () {
                          _showGarageDialog(context, widget.searchedUser.cars);
                        },
                        highlightedBorderColor: Colors.redAccent,
                        highlightColor: Colors.redAccent,
                        child: const Text(
                          'Garage',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 10 ,top: 8.0),
                      width: MediaQuery.of(context).size.width / 3,
                      child: OutlineButton(
                        shape: const StadiumBorder(),
                        onPressed: () async {
                          if (!await _doesChatExists(widget.searchedUser.uid) && !await _isSameUser(widget.searchedUser.uid)) {
                            StoreProvider.of<AppState>(context).dispatch(CreateChat(widget.searchedUser.uid));
                            Navigator.pushNamed(context, AppRoutes.messages);
                          } else if (!await _isSameUser(widget.searchedUser.uid)) {
                            StoreProvider.of<AppState>(context).dispatch(SetSelectedChat(_chatId));
                            Navigator.pushNamed(context, AppRoutes.messages);
                          }
                        },
                        highlightedBorderColor: Colors.redAccent,
                        highlightColor: Colors.redAccent,
                        child: const Text(
                          'Message',
                        ),
                      ),
                    ),
                    const Spacer(),
                    UserContainer(
                        builder: (BuildContext context, AppUser currentUser) {
                          final bool isFollowed = currentUser.following.contains(widget.searchedUser.uid);
                          return Container(
                            padding: const EdgeInsets.only(right: 15.0, top: 8.0),
                            width: MediaQuery.of(context).size.width / 3.9,
                            child: OutlineButton(
                              color: Colors.redAccent,
                              shape: const StadiumBorder(),
                              onPressed: () {
                                if (isFollowed) {
                                  StoreProvider.of<AppState>(context).dispatch(StopFollowing(widget.searchedUser.uid));
                                } else {
                                  StoreProvider.of<AppState>(context).dispatch(StartFollowing(widget.searchedUser.uid));
                                }
                              },
                              highlightedBorderColor: Colors.redAccent,
                              textColor: Colors.redAccent,
                              highlightColor: Colors.redAccent,
                              child: Text(isFollowed ? 'Unfollow' : 'Follow', style: const TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          );
                        }
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: _postUrls?.length ?? 0,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0, childAspectRatio: 16 / 9),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.black87,
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.network(
                              _postUrls.elementAt(index),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

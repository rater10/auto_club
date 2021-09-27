import 'dart:io';

import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/containers/posts_container.dart';
import 'package:auto_club/src/data/auth_api.dart';
import 'package:auto_club/src/models/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/models/posts/post.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _imageUrl;
  int _followersNumber = 0;
  List<String> _postUrls;

  @override
  void initState() {
    super.initState();
    _getFollowers();
    _getPosts();
  }

  Future<void> _getFollowers() async {
    FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
    FirebaseAuth authInstance = FirebaseAuth.instance;
    User appUser = authInstance.currentUser;
    String appUserUid = appUser.uid;
    QuerySnapshot usersSnapshots = await firestoreInstance.collection('users').get();
    List<DocumentSnapshot> usersDocuments = usersSnapshots.docs;
    if (usersDocuments.isNotEmpty) {
      usersDocuments.forEach((element) {
        if (element.data()['following'].toString().contains(appUserUid)) {
          setState(() {
            _followersNumber++;
          });
        }
      });
    }
  }

  Future<void> _getPosts() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    User user = auth.currentUser;
    String uid = user.uid;
    QuerySnapshot snapshots = await firestore.collection('posts').get();
    List<DocumentSnapshot> documents = snapshots.docs;
    final List<String> posts = List();
    if (documents.length > 0) {
      documents.forEach((DocumentSnapshot element) {
        if (element.data()['uid'].toString().contains(uid)) {
          posts.add(
              element.data()['pictures'].toString().substring(1, element.data()['pictures'].toString().length - 1));
        }
      });
    }
    setState(() {
      _postUrls = posts;
    });
  }

  void _uploadImage(bool uploadFromCamera) async {
    final ImagePicker _imagePicker = ImagePicker();
    PickedFile image;

    if (uploadFromCamera) {
      image = await _imagePicker.getImage(source: ImageSource.camera);
    } else {
      image = await _imagePicker.getImage(source: ImageSource.gallery);
    }
    final File file = File(image.path);
    final Reference storageReference =
        FirebaseStorage.instance.ref().child('profilePictures/${path.basename(file.path)}');
    final UploadTask uploadTask = storageReference.putFile(file);
    await uploadTask.whenComplete(() async {
      final String downloadUrl = await storageReference.getDownloadURL();
      setState(() {
        _imageUrl = downloadUrl;
        StoreProvider.of<AppState>(context).dispatch(UpdateProfilePhoto(_imageUrl));
      });
    });
  }

  void _showChangeProfilePhotoDialog(BuildContext context) {
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
                    'Change your profile photo',
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
                            _uploadImage(false);
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
                            _uploadImage(true);
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
                  Icons.person,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: UserContainer(
            builder: (BuildContext context, AppUser user) {
              return RegisterInfoContainer(builder: (BuildContext context, RegisterInfo info) {
                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: ClipOval(
                              child: Container(
                                width: 96,
                                height: 96.0,
                                decoration: const BoxDecoration(shape: BoxShape.circle),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: MaterialButton(
                                    onPressed: () async {
                                      _showChangeProfilePhotoDialog(context);
                                    },
                                    child: _imageUrl != null
                                        ? Image.network(_imageUrl)
                                        : user.photoUrl.isNotEmpty
                                            ? Image.network(user.photoUrl)
                                            : const Icon(
                                                Icons.person,
                                                color: Colors.blueGrey,
                                              ),
                                  ),
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
                                      user.username,
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  if (user.isServiceAvailable) const Icon(
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
                                      user.following.length.toString() + ' Followings',
                                      style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
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
                                  user.birthDate.day.toString() +
                                  '/' +
                                  user.birthDate.month.toString() +
                                  '/' +
                                  user.birthDate.year.toString(),
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
                              user.location,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                        child: OutlineButton(
                          shape: const StadiumBorder(),
                          onPressed: () {
                            _showGarageDialog(context, user.cars);
                          },
                          highlightedBorderColor: Colors.redAccent,
                          highlightColor: Colors.redAccent,
                          child: const Text(
                            'Garage',
                          ),
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: _postUrls?.length ?? 0,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8.0,
                                mainAxisSpacing: 8.0,
                                childAspectRatio: 16 / 9),
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
                );
              });
            },
          ),
        ),
      ),
    );
  }
}

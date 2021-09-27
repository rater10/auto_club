import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:auto_club/src/models/posts/post.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
import 'package:quiver/iterables.dart';

class PostApi {
  const PostApi({@required FirebaseFirestore firestore, @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Stream<List<Post>> listen(String uid) {
    return _firestore //
        .collection('posts')
        .where('uid', isEqualTo: uid)
        .snapshots()
        .map((QuerySnapshot snapshot) =>
            // ignore: deprecated_member_use
            snapshot.documents //
                .map((DocumentSnapshot document) => Post.fromJson(document.data()))
                .toList())
        .doOnData((List<Post> list) => list.sort());
  }

  Future<Post> create({@required String uid, @required String description, @required List<String> pictures}) async {
    final List<String> downloadUrls = <String>[];
    for (int i = 0; i < pictures.length; i++) {
      final String file = pictures[i];

      final Reference storageRef = _storage.ref().child('users/$uid/posts/${basename(file)}');
      await storageRef.putFile(File(file)).whenComplete(() async {
        final String url = await storageRef.getDownloadURL();
        downloadUrls.add(url);
      });

      await File(file).delete();
    }

    final DocumentReference reference = _firestore.collection('posts').doc();
    final Post post = Post(id: reference.id, uid: uid, description: description, pictures: downloadUrls);
    await reference.set(post.json);
    return post;
  }

  Future<void> updateLikes(String postId, bool like) async {
    await _firestore.doc('posts/$postId').update(
      <String, dynamic>{
        'likes': FieldValue.increment(like ? 1 : -1),
      },
    );
  }
}

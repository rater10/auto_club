import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:auto_club/src/models/likes/like.dart';
import 'package:auto_club/src/models/likes/like_type.dart';
import 'package:meta/meta.dart';

class LikesApi {
  const LikesApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Like>> getLikes(String parentId) async {
    final QuerySnapshot snapshot = await _firestore
        .collection('likes')
        .where('parentId', isEqualTo: parentId)
        .getDocuments();

    return snapshot
        .docs
        .map((DocumentSnapshot snapshot) => Like.fromJson(snapshot.data()))
        .toList();
  }

  Future<Like> create({
    @required String uid,
    @required String parentId,
    @required LikeType type,
  }) async {
    final DocumentReference documentRef = _firestore.collection('likes').doc();
    final Like like = Like(
      id: documentRef.id,
      parentId: parentId,
      uid: uid,
      type: type,
    );

    await documentRef.set(like.json);
    return like;
  }

  Future<void> delete(String likeId) async {
    final DocumentReference documentRef = _firestore.doc('likes/$likeId');
    await documentRef.delete();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:auto_club/src/models/comments/comment.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class CommentsApi {
  const CommentsApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Stream<List<Comment>> listen(String postId) {
    return _firestore
        .collection('comments')
        .where('postId', isEqualTo: postId)
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.docs
            .map((DocumentSnapshot document) => Comment.fromJson(document.data()))
            .toList())
        .doOnData((List<Comment> list) => list.sort());
  }

  Future<Comment> create({@required String uid, @required String postId, @required String text}) async {
    final DocumentReference reference = _firestore.collection('comments').doc();
    final Comment comment = Comment(id: reference.id, uid: uid, postId: postId, text: text);
    await reference.set(comment.json);
    return comment;
  }
}

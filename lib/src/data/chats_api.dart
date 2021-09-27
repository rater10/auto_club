import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:auto_club/src/models/chats/chat.dart';
import 'package:auto_club/src/models/chats/message.dart';
import 'package:meta/meta.dart';

class ChatsApi {
  const ChatsApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<Chat> createChat(List<String> users) async {
    final DocumentReference chatRef = _firestore.collection('chats').doc();
    final Chat chat = Chat(id: chatRef.id, users: users);
    await chatRef.set(chat.json);
    return chat;
  }

  Stream<List<Chat>> listenForChats(String uid) {
    return _firestore
        .collection('chats')
        .where('users', arrayContains: uid)
        .snapshots()
        // ignore: deprecated_member_use
        .map((QuerySnapshot snapshot) => snapshot.documents
            .map((DocumentSnapshot document) => Chat.fromJson(document.data()))
            .toList());
  }

  Future<Message> createMessage({@required String chatId, @required String uid, @required String text}) async {
    final DocumentReference messageRef = _firestore.collection('messages').doc();

    final Message message = Message(
      id: messageRef.id,
      chatId: chatId,
      uid: uid,
      message: text,
      createdAt: DateTime.now().toUtc(),
    );

    await messageRef.set(message.json);
    return message;
  }

  Stream<List<Message>> listenForMessages(String chatId) {
    return _firestore //
        .collection('messages')
        .where('chatId', isEqualTo: chatId)
        .snapshots(includeMetadataChanges: true)
        // ignore: deprecated_member_use
        .map((QuerySnapshot snapshot) => snapshot.documents
            .map((DocumentSnapshot document) => Message.fromJson(document.data()))
            .toList());
  }
}

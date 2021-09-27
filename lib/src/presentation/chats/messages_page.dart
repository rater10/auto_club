import 'package:auto_club/src/containers/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/actions/chats/create_message.dart';
import 'package:auto_club/src/actions/chats/listen_for_messages.dart';
import 'package:auto_club/src/containers/contacts_container.dart';
import 'package:auto_club/src/containers/messages_container.dart';
import 'package:auto_club/src/containers/selected_chat_container.dart';
import 'package:auto_club/src/models/chats/chat.dart';
import 'package:auto_club/src/models/chats/message.dart';
import 'package:redux/redux.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final TextEditingController _controller = TextEditingController();
  Store<AppState> store;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store = StoreProvider.of<AppState>(context);
      store.dispatch(ListenForMessages());
    });
  }

  @override
  void dispose() {
    store.dispatch(StopListenForMessages());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return ContactsContainer(
          builder: (BuildContext context, Map<String, AppUser> contacts) {
            return ChatContainer(
              builder: (BuildContext context, Chat chat) {
                final String contactUid = chat.users.firstWhere((String uid) => uid != currentUser.uid);
                final AppUser user = contacts[contactUid];
                if (user == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Scaffold(
                  appBar: AppBar(
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
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('${user.username}'),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.redAccent,
                  ),
                  body: DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16.0,
                        ),
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: MessagesContainer(
                            builder: (BuildContext context, List<Message> messages) {
                              if (messages.isEmpty) {
                                return const Center(
                                  child: Text('Start conversation'),
                                );
                              }

                              return ListView.builder(
                                itemCount: messages.length,
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 16.0,
                                  start: 16.0,
                                  end: 16.0,
                                ),
                                reverse: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final Message message = messages[index];
                                  final bool isMe = message.uid == currentUser.uid;

                                  return Container(
                                    alignment: isMe ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(vertical: 1.0),
                                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                                      decoration: BoxDecoration(
                                        color: isMe ? Colors.blueGrey : Colors.red,
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: Text(
                                        message.message,
                                        style: TextStyle(
                                          color: isMe ? Colors.white : Colors.white,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        const Divider(height: 0.0),
                        SafeArea(
                          top: false,
                          right: false,
                          left: false,
                          child: Row(
                            children: <Widget>[
                              const SizedBox(width: 16.0),
                              Flexible(
                                child: TextField(
                                  controller: _controller,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              IconButton(
                                icon: const Icon(Icons.send),
                                onPressed: () {
                                  if (_controller.text.trim().isNotEmpty) {
                                    StoreProvider.of<AppState>(context).dispatch(CreateMessage(_controller.text));
                                    _controller.clear();
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
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
  }
}

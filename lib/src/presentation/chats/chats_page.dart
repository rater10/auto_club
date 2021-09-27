import 'package:auto_club/src/containers/index.dart';
import 'package:auto_club/src/containers/messages_container.dart';
import 'package:auto_club/src/models/chats/message.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/actions/chats/set_selected_chat.dart';
import 'package:auto_club/src/containers/chats_container.dart';
import 'package:auto_club/src/containers/contacts_container.dart';
import 'package:auto_club/src/models/chats/chat.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserContainer(
        builder: (BuildContext context, AppUser currentUser) {
          return ContactsContainer(
            builder: (BuildContext context, Map<String, AppUser> contacts) {
              return ChatsContainer(
                builder: (BuildContext context, List<Chat> chats) {
                  if (chats.isEmpty) {
                    return const Center(
                      child: Text(
                        'You have no conversations yet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Chat chat = chats[index];
                      final String contactUid = chat.users.firstWhere((String uid) => uid != currentUser.uid);
                      final AppUser user = contacts[contactUid];

                      return Column(
                        children: <Widget>[
                          ListTile(
                            leading: user.photoUrl != null
                                ? ClipOval(
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
                                  )
                                : null,
                            title: Row(
                              children: <Widget>[
                                if (user.isServiceAvailable)
                                  Container(
                                    padding: const EdgeInsets.only(top: 2.0, right: 4.0),
                                    child: Text('${user.username}'),
                                  )
                                else
                                  Container(
                                    padding: const EdgeInsets.only(top: 16.0, right: 4.0),
                                    child: Text('${user.username}'),
                                  ),
                                if (user.isServiceAvailable)
                                  const Icon(
                                    Icons.verified,
                                    color: Colors.redAccent,
                                  )
                                else
                                  Container(),
                              ],
                            ),
                            onTap: () {
                              StoreProvider.of<AppState>(context).dispatch(SetSelectedChat(chat.id));
                              Navigator.pushNamed(context, AppRoutes.messages);
                            },
                            subtitle: user.isServiceAvailable ? Text(user.serviceName) : const Text(''),
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

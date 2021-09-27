import 'package:auto_club/src/actions/auth/start_following.dart';
import 'package:auto_club/src/actions/auth/stop_following.dart';
import 'package:auto_club/src/actions/chats/create_chat.dart';
import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/containers/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/profile/searched_user_profile_page.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SearchUserPage extends StatelessWidget {
  const SearchUserPage({Key key, this.showFollow = true}) : super(key: key);

  final bool showFollow;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return SearchResultContainer(
          builder: (BuildContext context, List<AppUser> users) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.redAccent,
                title: Container(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: 'Search users',
                        // suffixIcon: Icon(Icons.person_search, color: Colors.white,),
                        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onChanged: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(SearchUsers(value));
                    },
                  ),
                ),
              ),
              body: ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final AppUser user = users[index];
                  final bool isFollowed = currentUser.following.contains(user.uid);

                  return ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchedUserProfilePage(searchedUser: user,)));
                    },
                    leading: Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: ClipOval(
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
                    ),
                    title: Text('@${user.username}'),
                    subtitle: Text(user.email),
                    trailing: showFollow
                        ? FlatButton(
                            shape: const StadiumBorder(),
                            child: Text(isFollowed ? 'Unfollow' : 'Follow', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            color: Colors.redAccent,
                            onPressed: () {
                              if (isFollowed) {
                                StoreProvider.of<AppState>(context).dispatch(StopFollowing(user.uid));
                              } else {
                                StoreProvider.of<AppState>(context).dispatch(StartFollowing(user.uid));
                              }
                            },
                          )
                        : null,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}

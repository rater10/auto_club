import 'package:auto_club/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:auto_club/src/actions/posts/create_post.dart';
import 'package:auto_club/src/actions/posts/update_post_info.dart';
import 'package:auto_club/src/containers/save_post_info_container.dart';
import 'package:auto_club/src/models/posts/save_post_info.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({Key key}) : super(key: key);

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  void _onPostCreate(dynamic action) {
    if (action is CreatePostSuccessful) {
      Navigator.popUntil(context, ModalRoute.withName('/'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a car post'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(CreatePost(_onPostCreate));
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SavePostInfoContainer(
            builder: (BuildContext context, SavePostInfo info) {
              return Column(
                children: <Widget>[
                  Container(
                    color: Colors.black12,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(info.pictures.first, fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Add a description',
                      ),
                      onChanged: (String value) {
                        info = info.rebuild((SavePostInfoBuilder b) => b.description = value);
                        StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(info));
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

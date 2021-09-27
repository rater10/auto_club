import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/data/auth_api.dart';
import 'package:auto_club/src/data/chats_api.dart';
import 'package:auto_club/src/data/comments_api.dart';
import 'package:auto_club/src/data/likes_api.dart';
import 'package:auto_club/src/data/post_api.dart';
import 'package:auto_club/src/epics/app_epics.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/reducer/reducer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  final AuthApi authApi = AuthApi(auth: auth, firestore: firestore);
  final PostApi postApi = PostApi(firestore: FirebaseFirestore.instance, storage: FirebaseStorage.instance);
  final CommentsApi commentsApi = CommentsApi(firestore: FirebaseFirestore.instance);
  final LikesApi likesApi = LikesApi(firestore: FirebaseFirestore.instance);
  final ChatsApi chatsApi = ChatsApi(firestore: FirebaseFirestore.instance);

  final AppEpics epics = AppEpics(authApi: authApi, postApi: postApi, commentsApi: commentsApi, likesApi: likesApi, chatsApi: chatsApi,);
  final AppState initialState = AppState.initialState();
  return Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  )..dispatch(const InitializeApp());
}

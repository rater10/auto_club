import 'package:auto_club/src/models/index.dart';

export 'auth/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  const ErrorAction();
}

typedef ActionResponse = void Function(AppAction action);

abstract class UserAction implements AppAction {
  AppUser get user;
}

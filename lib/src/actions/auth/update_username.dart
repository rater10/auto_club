part of auth_actions;

@freezed
abstract class UpdateUsername with _$UpdateUsername implements AppAction {
  const factory UpdateUsername(String username) = UpdateUsername$;

  const factory UpdateUsername.successful() = UpdateUsernameSuccessful;

  @Implements(ErrorAction)
  const factory UpdateUsername.error(Object error) = UpdateUsernameError;
}
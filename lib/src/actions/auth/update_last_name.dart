part of auth_actions;

@freezed
abstract class UpdateLastName with _$UpdateLastName implements AppAction {
  const factory UpdateLastName(String lastName) = UpdateLastName$;

  const factory UpdateLastName.successful() = UpdateLastNameSuccessful;

  @Implements(ErrorAction)
  const factory UpdateLastName.error(Object error) = UpdateLastNameError;
}
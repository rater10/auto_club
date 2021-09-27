part of auth_actions;

@freezed
abstract class UpdateFirstName with _$UpdateFirstName implements AppAction {
  const factory UpdateFirstName(String firstName) = UpdateFirstName$;

  const factory UpdateFirstName.successful() = UpdateFirstNameSuccessful;

  @Implements(ErrorAction)
  const factory UpdateFirstName.error(Object error) = UpdateFirstNameError;
}
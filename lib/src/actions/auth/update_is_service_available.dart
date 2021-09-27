part of auth_actions;

@freezed
abstract class UpdateIsServiceAvailable with _$UpdateIsServiceAvailable implements AppAction {
  const factory UpdateIsServiceAvailable(bool isServiceAvailable) = UpdateIsServiceAvailable$;

  const factory UpdateIsServiceAvailable.successful() = UpdateIsServiceAvailableSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsServiceAvailable.error(Object error) = UpdateIsServiceAvailableError;
}
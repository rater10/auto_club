part of auth_actions;

@freezed
abstract class UpdateIsServiceAndRepairs with _$UpdateIsServiceAndRepairs implements AppAction {
  const factory UpdateIsServiceAndRepairs(bool isServiceAndRepairs) = UpdateIsServiceAndRepairs$;

  const factory UpdateIsServiceAndRepairs.successful() = UpdateIsServiceAndRepairsSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsServiceAndRepairs.error(Object error) = UpdateIsServiceAndRepairsError;
}
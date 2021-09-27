part of auth_actions;

@freezed
abstract class UpdateLocation with _$UpdateLocation implements AppAction {
  const factory UpdateLocation(String location) = UpdateLocation$;

  const factory UpdateLocation.successful() = UpdateLocationSuccessful;

  @Implements(ErrorAction)
  const factory UpdateLocation.error(Object error) = UpdateLocationError;
}
part of auth_actions;

@freezed
abstract class UpdateServiceLocation with _$UpdateServiceLocation implements AppAction {
  const factory UpdateServiceLocation(String serviceLocation) = UpdateServiceLocation$;

  const factory UpdateServiceLocation.successful() = UpdateServiceLocationSuccessful;

  @Implements(ErrorAction)
  const factory UpdateServiceLocation.error(Object error) = UpdateServiceLocationError;
}
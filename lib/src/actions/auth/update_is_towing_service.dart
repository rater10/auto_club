part of auth_actions;

@freezed
abstract class UpdateIsTowingService with _$UpdateIsTowingService implements AppAction {
  const factory UpdateIsTowingService(bool isTowingService) = UpdateIsTowingService$;

  const factory UpdateIsTowingService.successful() = UpdateIsTowingServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsTowingService.error(Object error) = UpdateIsTowingServiceError;
}
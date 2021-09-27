part of auth_actions;

@freezed
abstract class UpdateIsTuningService with _$UpdateIsTuningService implements AppAction {
  const factory UpdateIsTuningService(bool isTuningService) = UpdateIsTuningService$;

  const factory UpdateIsTuningService.successful() = UpdateIsTuningServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsTuningService.error(Object error) = UpdateIsTuningServiceError;
}
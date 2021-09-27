part of auth_actions;

@freezed
abstract class UpdateIsEngineDecarbonizationService with _$UpdateIsEngineDecarbonizationService implements AppAction {
  const factory UpdateIsEngineDecarbonizationService(bool isEngineDecarbonizationService) = UpdateIsEngineDecarbonizationService$;

  const factory UpdateIsEngineDecarbonizationService.successful() = UpdateIsEngineDecarbonizationServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsEngineDecarbonizationService.error(Object error) = UpdateIsEngineDecarbonizationServiceError;
}
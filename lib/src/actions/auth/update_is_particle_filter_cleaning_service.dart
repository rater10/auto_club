part of auth_actions;

@freezed
abstract class UpdateIsParticleFilterCleaningService with _$UpdateIsParticleFilterCleaningService implements AppAction {
  const factory UpdateIsParticleFilterCleaningService(bool isParticleFilterCleaningService) = UpdateIsParticleFilterCleaningService$;

  const factory UpdateIsParticleFilterCleaningService.successful() = UpdateIsParticleFilterCleaningServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsParticleFilterCleaningService.error(Object error) = UpdateIsParticleFilterCleaningServiceError;
}
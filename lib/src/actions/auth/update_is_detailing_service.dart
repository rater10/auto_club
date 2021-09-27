part of auth_actions;

@freezed
abstract class UpdateIsDetailingService with _$UpdateIsDetailingService implements AppAction {
  const factory UpdateIsDetailingService(bool isDetailingService) = UpdateIsDetailingService$;

  const factory UpdateIsDetailingService.successful() = UpdateIsDetailingServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsDetailingService.error(Object error) = UpdateIsDetailingServiceError;
}
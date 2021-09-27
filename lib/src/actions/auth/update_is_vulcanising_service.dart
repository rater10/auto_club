part of auth_actions;

@freezed
abstract class UpdateIsVulcanisingService with _$UpdateIsVulcanisingService implements AppAction {
  const factory UpdateIsVulcanisingService(bool isVulcanisingService) = UpdateIsVulcanisingService$;

  const factory UpdateIsVulcanisingService.successful() = UpdateIsVulcanisingServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsVulcanisingService.error(Object error) = UpdateIsVulcanisingServiceError;
}
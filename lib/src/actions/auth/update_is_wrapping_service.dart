part of auth_actions;

@freezed
abstract class UpdateIsWrappingService with _$UpdateIsWrappingService implements AppAction {
  const factory UpdateIsWrappingService(bool isWrappingService) = UpdateIsWrappingService$;

  const factory UpdateIsWrappingService.successful() = UpdateIsWrappingServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsWrappingService.error(Object error) = UpdateIsWrappingServiceError;
}
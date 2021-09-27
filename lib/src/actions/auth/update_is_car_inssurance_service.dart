part of auth_actions;

@freezed
abstract class UpdateIsCarInssuranceService with _$UpdateIsCarInssuranceService implements AppAction {
  const factory UpdateIsCarInssuranceService(bool isCarInssuranceService) = UpdateIsCarInssuranceService$;

  const factory UpdateIsCarInssuranceService.successful() = UpdateIsCarInssuranceServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsCarInssuranceService.error(Object error) = UpdateIsCarInssuranceServiceError;
}
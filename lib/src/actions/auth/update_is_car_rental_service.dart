part of auth_actions;

@freezed
abstract class UpdateIsCarRentalService with _$UpdateIsCarRentalService implements AppAction {
  const factory UpdateIsCarRentalService(bool isCarRentalService) = UpdateIsCarRentalService$;

  const factory UpdateIsCarRentalService.successful() = UpdateIsCarRentalServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsCarRentalService.error(Object error) = UpdateIsCarRentalServiceError;
}
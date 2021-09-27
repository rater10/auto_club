part of auth_actions;

@freezed
abstract class UpdateIsCarDealershipService with _$UpdateIsCarDealershipService implements AppAction {
  const factory UpdateIsCarDealershipService(bool isCarDealershipService) = UpdateIsCarDealershipService$;

  const factory UpdateIsCarDealershipService.successful() = UpdateIsCarDealershipServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsCarDealershipService.error(Object error) = UpdateIsCarDealershipServiceError;
}
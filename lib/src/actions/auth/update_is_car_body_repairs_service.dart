part of auth_actions;

@freezed
abstract class UpdateIsCarBodyRepairsService with _$UpdateIsCarBodyRepairsService implements AppAction {
  const factory UpdateIsCarBodyRepairsService(bool isCarBodyRepairsService) = UpdateIsCarBodyRepairsService$;

  const factory UpdateIsCarBodyRepairsService.successful() = UpdateIsCarBodyRepairsServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsCarBodyRepairsService.error(Object error) = UpdateIsCarBodyRepairsServiceError;
}
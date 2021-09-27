part of auth_actions;

@freezed
abstract class UpdateFridayServiceHours with _$UpdateFridayServiceHours implements AppAction {
  const factory UpdateFridayServiceHours(String fridayServiceHours) = UpdateFridayServiceHours$;

  const factory UpdateFridayServiceHours.successful() = UpdateFridayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateFridayServiceHours.error(Object error) = UpdateFridayServiceHoursError;
}
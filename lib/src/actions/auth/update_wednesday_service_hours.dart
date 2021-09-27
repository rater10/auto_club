part of auth_actions;

@freezed
abstract class UpdateWednesdayServiceHours with _$UpdateWednesdayServiceHours implements AppAction {
  const factory UpdateWednesdayServiceHours(String wednesdayServiceHours) = UpdateWednesdayServiceHours$;

  const factory UpdateWednesdayServiceHours.successful() = UpdateWednesdayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateWednesdayServiceHours.error(Object error) = UpdateWednesdayServiceHoursError;
}
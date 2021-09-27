part of auth_actions;

@freezed
abstract class UpdateTuesdayServiceHours with _$UpdateTuesdayServiceHours implements AppAction {
  const factory UpdateTuesdayServiceHours(String tuesdayServiceHours) = UpdateTuesdayServiceHours$;

  const factory UpdateTuesdayServiceHours.successful() = UpdateTuesdayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateTuesdayServiceHours.error(Object error) = UpdateTuesdayServiceHoursError;
}
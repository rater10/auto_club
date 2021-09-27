part of auth_actions;

@freezed
abstract class UpdateSundayServiceHours with _$UpdateSundayServiceHours implements AppAction {
  const factory UpdateSundayServiceHours(String sundayServiceHours) = UpdateSundayServiceHours$;

  const factory UpdateSundayServiceHours.successful() = UpdateSundayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateSundayServiceHours.error(Object error) = UpdateSundayServiceHoursError;
}
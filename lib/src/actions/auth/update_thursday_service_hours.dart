part of auth_actions;

@freezed
abstract class UpdateThursdayServiceHours with _$UpdateThursdayServiceHours implements AppAction {
  const factory UpdateThursdayServiceHours(String thursdayServiceHours) = UpdateThursdayServiceHours$;

  const factory UpdateThursdayServiceHours.successful() = UpdateThursdayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateThursdayServiceHours.error(Object error) = UpdateThursdayServiceHoursError;
}
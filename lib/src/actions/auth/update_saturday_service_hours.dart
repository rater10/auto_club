part of auth_actions;

@freezed
abstract class UpdateSaturdayServiceHours with _$UpdateSaturdayServiceHours implements AppAction {
  const factory UpdateSaturdayServiceHours(String saturdayServiceHours) = UpdateSaturdayServiceHours$;

  const factory UpdateSaturdayServiceHours.successful() = UpdateSaturdayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateSaturdayServiceHours.error(Object error) = UpdateSaturdayServiceHoursError;
}
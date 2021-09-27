part of auth_actions;

@freezed
abstract class UpdateMondayServiceHours with _$UpdateMondayServiceHours implements AppAction {
  const factory UpdateMondayServiceHours(String mondayServiceHours) = UpdateMondayServiceHours$;

  const factory UpdateMondayServiceHours.successful() = UpdateMondayServiceHoursSuccessful;

  @Implements(ErrorAction)
  const factory UpdateMondayServiceHours.error(Object error) = UpdateMondayServiceHoursError;
}
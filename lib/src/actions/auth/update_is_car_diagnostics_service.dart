part of auth_actions;

@freezed
abstract class UpdateIsCarDiagnosticsService with _$UpdateIsCarDiagnosticsService implements AppAction {
  const factory UpdateIsCarDiagnosticsService(bool isCarDiagnosticsService) = UpdateIsCarDiagnosticsService$;

  const factory UpdateIsCarDiagnosticsService.successful() = UpdateIsCarDiagnosticsServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsCarDiagnosticsService.error(Object error) = UpdateIsCarDiagnosticsServiceError;
}
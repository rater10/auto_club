part of auth_actions;

@freezed
abstract class UpdateIsAutoElectricianService with _$UpdateIsAutoElectricianService implements AppAction {
  const factory UpdateIsAutoElectricianService(bool isAutoElectricianService) = UpdateIsAutoElectricianService$;

  const factory UpdateIsAutoElectricianService.successful() = UpdateIsAutoElectricianServiceSuccessful;

  @Implements(ErrorAction)
  const factory UpdateIsAutoElectricianService.error(Object error) = UpdateIsAutoElectricianServiceError;
}
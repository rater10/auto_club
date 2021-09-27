part of auth_actions;

@freezed
abstract class UpdateCars with _$UpdateCars implements AppAction {
  const factory UpdateCars(String cars) = UpdateCars$;

  const factory UpdateCars.successful() = UpdateCarsSuccessful;

  @Implements(ErrorAction)
  const factory UpdateCars.error(Object error) = UpdateCarsError;
}
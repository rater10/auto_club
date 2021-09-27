part of auth_actions;

@freezed
abstract class UpdateServiceName with _$UpdateServiceName implements AppAction {
  const factory UpdateServiceName(String serviceName) = UpdateServiceName$;

  const factory UpdateServiceName.successful() = UpdateServiceNameSuccessful;

  @Implements(ErrorAction)
  const factory UpdateServiceName.error(Object error) = UpdateServiceNameError;
}
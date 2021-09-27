part of auth_actions;

@freezed
abstract class UpdateServiceDescription with _$UpdateServiceDescription implements AppAction {
  const factory UpdateServiceDescription(String serviceDescription) = UpdateServiceDescription$;

  const factory UpdateServiceDescription.successful() = UpdateServiceDescriptionSuccessful;

  @Implements(ErrorAction)
  const factory UpdateServiceDescription.error(Object error) = UpdateServiceDescriptionError;
}
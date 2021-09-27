part of auth_actions;

@freezed
abstract class UpdateServicePhone with _$UpdateServicePhone implements AppAction {
  const factory UpdateServicePhone(String servicePhone) = UpdateServicePhone$;

  const factory UpdateServicePhone.successful() = UpdateServicePhoneSuccessful;

  @Implements(ErrorAction)
  const factory UpdateServicePhone.error(Object error) = UpdateServicePhoneError;
}
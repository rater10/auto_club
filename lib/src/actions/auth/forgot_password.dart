part of auth_actions;

@freezed
abstract class ForgotPassword with _$ForgotPassword implements AppAction {
  const factory ForgotPassword(String email) = ForgotPassword$;

  const factory ForgotPassword.successful() = ForgotPasswordSuccessful;

  @Implements(ErrorAction)
  const factory ForgotPassword.error(Object error) = ForgotPasswordError;
}

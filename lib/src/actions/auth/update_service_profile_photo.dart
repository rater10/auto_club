part of auth_actions;

@freezed
abstract class UpdateServiceProfilePhoto with _$UpdateServiceProfilePhoto implements AppAction {
  const factory UpdateServiceProfilePhoto(String serviceProfilePhotoUrl) = UpdateServiceProfilePhoto$;

  const factory UpdateServiceProfilePhoto.successful() = UpdateServiceProfilePhotoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateServiceProfilePhoto.error(Object error) = UpdateServiceProfilePhotoError;
}
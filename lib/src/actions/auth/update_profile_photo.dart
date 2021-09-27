part of auth_actions;

@freezed
abstract class UpdateProfilePhoto with _$UpdateProfilePhoto implements AppAction {
  const factory UpdateProfilePhoto(String photoUrl) = UpdateProfilePhoto$;

  const factory UpdateProfilePhoto.successful() = UpdateProfilePhotoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateProfilePhoto.error(Object error) = UpdateProfilePhotoError;
}
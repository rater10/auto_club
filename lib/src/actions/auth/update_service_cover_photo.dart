part of auth_actions;

@freezed
abstract class UpdateServiceCoverPhoto with _$UpdateServiceCoverPhoto implements AppAction {
  const factory UpdateServiceCoverPhoto(String serviceCoverPhotoUrl) = UpdateServiceCoverPhoto$;

  const factory UpdateServiceCoverPhoto.successful() = UpdateServiceCoverPhotoSuccessful;

  @Implements(ErrorAction)
  const factory UpdateServiceCoverPhoto.error(Object error) = UpdateServiceCoverPhotoError;
}
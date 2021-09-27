import 'package:auto_club/src/actions/auth/get_contact.dart';
import 'package:auto_club/src/actions/auth/start_following.dart';
import 'package:auto_club/src/actions/auth/stop_following.dart';
import 'package:auto_club/src/actions/chats/listen_for_chats.dart';
import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/data/auth_api.dart';
import 'package:auto_club/src/data/current_locator.dart';
import 'package:auto_club/src/models/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, Register$>(_register),
      TypedEpic<AppState, Logout$>(_logout),
      TypedEpic<AppState, ForgotPassword$>(_forgotPassword),
      TypedEpic<AppState, UpdateProfilePhoto$>(_updateProfilePhoto),
      TypedEpic<AppState, UpdateUsername$>(_updateUsername),
      TypedEpic<AppState, UpdateLocation$>(_updateLocation),
      TypedEpic<AppState, UpdateCars$>(_updateCars),
      TypedEpic<AppState, GetContact>(_getContact),
      TypedEpic<AppState, SearchUsers$>(_searchUsers),
      TypedEpic<AppState, StartFollowing>(_startFollowing),
      TypedEpic<AppState, StopFollowing>(_stopFollowing),
      TypedEpic<AppState, UpdateServiceCoverPhoto$>(_updateServiceCoverPhoto),
      TypedEpic<AppState, UpdateServiceProfilePhoto$>(_updateServiceProfilePhoto),
      TypedEpic<AppState, UpdateFirstName$>(_updateFirstName),
      TypedEpic<AppState, UpdateLastName$>(_updateLastName),
      TypedEpic<AppState, UpdateServiceName$>(_updateServiceName),
      TypedEpic<AppState, UpdateServiceLocation$>(_updateServiceLocation),
      TypedEpic<AppState, UpdateServicePhone$>(_updateServicePhone),
      TypedEpic<AppState, UpdateIsAutoElectricianService$>(_updateIsAutoElectricianService),
      TypedEpic<AppState, UpdateIsCarBodyRepairsService$>(_updateIsCarBodyRepairsService),
      TypedEpic<AppState, UpdateIsCarDealershipService$>(_updateIsCarDealershipService),
      TypedEpic<AppState, UpdateIsCarDiagnosticsService$>(_updateIsCarDiagnosticsService),
      TypedEpic<AppState, UpdateIsCarInssuranceService$>(_updateIsCarInssuranceService),
      TypedEpic<AppState, UpdateIsCarRentalService$>(_updateIsCarRentalService),
      TypedEpic<AppState, UpdateIsDetailingService$>(_updateIsDetailingService),
      TypedEpic<AppState, UpdateIsEngineDecarbonizationService$>(_updateIsEngineDecarbonizationService),
      TypedEpic<AppState, UpdateIsParticleFilterCleaningService$>(_updateIsParticleFilterCleaningService),
      TypedEpic<AppState, UpdateIsServiceAndRepairs$>(_updateIsServiceAndRepairs),
      TypedEpic<AppState, UpdateIsTowingService$>(_updateIsTowingService),
      TypedEpic<AppState, UpdateIsTuningService$>(_updateIsTuningService),
      TypedEpic<AppState, UpdateIsVulcanisingService$>(_updateIsVulcanisingService),
      TypedEpic<AppState, UpdateIsWrappingService$>(_updateIsWrappingService),
      TypedEpic<AppState, UpdateServiceDescription$>(_updateServiceDescription),
      TypedEpic<AppState, UpdateMondayServiceHours$>(_updateMondayServiceHours),
      TypedEpic<AppState, UpdateTuesdayServiceHours$>(_updateTuesdayServiceHours),
      TypedEpic<AppState, UpdateWednesdayServiceHours$>(_updateWednesdayServiceHours),
      TypedEpic<AppState, UpdateThursdayServiceHours$>(_updateThursdayServiceHours),
      TypedEpic<AppState, UpdateFridayServiceHours$>(_updateFridayServiceHours),
      TypedEpic<AppState, UpdateSaturdayServiceHours$>(_updateSaturdayServiceHours),
      TypedEpic<AppState, UpdateSundayServiceHours$>(_updateSundayServiceHours),
      TypedEpic<AppState, UpdateIsServiceAvailable$>(_updateIsServiceAvailable),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
            .asyncMap((InitializeApp$ action) => _api.initializeApp())
            .expand((AppUser user) => <AppAction> [InitializeApp.successful(user), ListenForChats()])
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
            .expand<AppAction>((AppUser user) => <AppAction>[
                  LoginSuccessful(user),
                  ListenForChats(),
                  ...user.following
                      .where((String uid) => store.state.auth.contacts[uid] == null)
                      .map((String uid) => GetContact(uid))
                      .toSet(),
                ])
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _register(Stream<Register$> actions, EpicStore<AppState> store) {
    CurrentLocator location = CurrentLocator();
    return actions
        .flatMap((Register$ action) => Stream<Register$>.value(action)
            .asyncMap((Register$ action) => _api.register(
                  email: store.state.auth.info.email,
                  password: store.state.auth.info.password,
                  username: store.state.auth.info.username ?? store.state.auth.info.email.split('@')[0],
                  birthDate: store.state.auth.info.birthDate,
                  location: store.state.auth.info.location ?? location.location,
                  cars: store.state.auth.info.cars,
                  photoUrl: store.state.auth.info.photoUrl ?? '',
                  firstName: store.state.auth.info.firstName ?? '',
                  lastName: store.state.auth.info.lastName ?? '',
                  serviceName: store.state.auth.info.serviceName ?? '',
                  serviceLocation: store.state.auth.info.serviceLocation ?? '',
                  servicePhone: store.state.auth.info.servicePhone ?? '',
                  isAutoElectricianService: store.state.auth.info.isAutoElectricianService ?? false,
                  isCarBodyRepairsService: store.state.auth.info.isCarBodyRepairsService ?? false,
                  isCarDealershipService: store.state.auth.info.isCarDealershipService ?? false,
                  isCarDiagnosticsService: store.state.auth.info.isCarDiagnosticsService ?? false,
                  isCarInssuranceService: store.state.auth.info.isCarInssuranceService ?? false,
                  isCarRentalService: store.state.auth.info.isCarRentalService ?? false,
                  isDetailingService: store.state.auth.info.isDetailingService ?? false,
                  isEngineDecarbonizationService: store.state.auth.info.isEngineDecarbonizationService ?? false,
                  isParticleFilterCleaningService: store.state.auth.info.isParticleFilterCleaningService ?? false,
                  isServiceAndRepairs: store.state.auth.info.isServiceAndRepairs ?? false,
                  isTowingService: store.state.auth.info.isTowingService ?? false,
                  isTuningService: store.state.auth.info.isTuningService ?? false,
                  isVulcanisingService: store.state.auth.info.isVulcanisingService ?? false,
                  isWrappingService: store.state.auth.info.isWrappingService ?? false,
                  serviceDescription: store.state.auth.info.serviceDescription ?? '',
                  mondayServiceHours: store.state.auth.info.mondayServiceHours ?? '',
                  tuesdayServiceHours: store.state.auth.info.tuesdayServiceHours ?? '',
                  wednesdayServiceHours: store.state.auth.info.wednesdayServiceHours ?? '',
                  thursdayServiceHours: store.state.auth.info.thursdayServiceHours ?? '',
                  fridayServiceHours: store.state.auth.info.fridayServiceHours ?? '',
                  saturdayServiceHours: store.state.auth.info.saturdayServiceHours ?? '',
                  sundayServiceHours: store.state.auth.info.sundayServiceHours ?? '',
                  isServiceAvailable: store.state.auth.info.isServiceAvailable ?? false,
                  serviceCoverPhotoUrl: store.state.auth.info.serviceCoverPhotoUrl ?? '',
                  serviceProfilePhotoUrl: store.state.auth.info.serviceProfilePhotoUrl ?? '',
                ))
            .expand<AppAction>((AppUser user) => <AppAction>[
                  Register.successful(user),
                  ListenForChats(),
                ])
            .onErrorReturnWith((dynamic error) => Register.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _logout(Stream<Logout$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Logout$ action) => Stream<Logout$>.value(action)
            .asyncMap((Logout$ action) => _api.logout())
            .expand<AppAction>((_) => <AppAction>[
                  const Logout.successful(),
                  StopListenForChats(),
                ])
            .onErrorReturnWith((dynamic error) => Logout.error(error)));
  }

  Stream<AppAction> _forgotPassword(Stream<ForgotPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ForgotPassword$ action) => Stream<ForgotPassword$>.value(action)
            .asyncMap((ForgotPassword$ action) => _api.forgotPassword(action.email))
            .map((_) => const ForgotPassword.successful())
            .onErrorReturnWith((dynamic error) => ForgotPassword.error(error)));
  }

  Stream<AppAction> _updateProfilePhoto(Stream<UpdateProfilePhoto$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateProfilePhoto$ action) => Stream<UpdateProfilePhoto$>.value(action)
            .asyncMap((UpdateProfilePhoto$ action) => _api.updateProfilePhoto(action.photoUrl))
            .map((_) => const UpdateProfilePhoto.successful())
            .onErrorReturnWith((dynamic error) => UpdateProfilePhoto.error(error)));
  }

  Stream<AppAction> _updateUsername(Stream<UpdateUsername$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateUsername$ action) => Stream<UpdateUsername$>.value(action)
            .asyncMap((UpdateUsername$ action) => _api.updateUsername(action.username))
            .map((_) => const UpdateUsername.successful())
            .onErrorReturnWith((dynamic error) => UpdateUsername.error(error)));
  }

  Stream<AppAction> _updateLocation(Stream<UpdateLocation$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateLocation$ action) => Stream<UpdateLocation$>.value(action)
            .asyncMap((UpdateLocation$ action) => _api.updateLocation(action.location))
            .map((_) => const UpdateUsername.successful())
            .onErrorReturnWith((dynamic error) => UpdateUsername.error(error)));
  }

  Stream<AppAction> _updateCars(Stream<UpdateCars$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateCars$ action) => Stream<UpdateCars$>.value(action)
            .asyncMap((UpdateCars$ action) => _api.updateCars(action.cars))
            .map((_) => const UpdateCars.successful())
            .onErrorReturnWith((dynamic error) => UpdateCars.error(error)));
  }

  Stream<AppAction> _getContact(Stream<GetContact> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((GetContact action) => _api
            .getContact(action.uid)
            .asStream()
            .map<AppAction>((AppUser user) => GetContactSuccessful(user))
            .onErrorReturnWith((dynamic error) => GetContactError(error)));
  }

  Stream<AppAction> _searchUsers(Stream<SearchUsers$> actions, EpicStore<AppState> store) {
    return actions
        .debounceTime(const Duration(milliseconds: 500))
        .flatMap((SearchUsers$ action) => Stream<SearchUsers$>.value(action)
            .asyncMap((SearchUsers$ action) => _api.searchUsers(action.query))
            .map((List<AppUser> users) => SearchUsers.successful(users))
            .onErrorReturnWith((dynamic error) => SearchUsers.error(error)));
  }

  Stream<AppAction> _startFollowing(Stream<StartFollowing> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((StartFollowing action) => _api
            .startFollowing(uid: store.state.auth.user.uid, followingUid: action.followingUid)
            .asStream()
            .map<AppAction>((_) => StartFollowingSuccessful(action.followingUid))
            .onErrorReturnWith((dynamic error) => StartFollowingError(error)));
  }

  Stream<AppAction> _stopFollowing(Stream<StopFollowing> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((StopFollowing action) => _api
            .stopFollowing(uid: store.state.auth.user.uid, followingUid: action.followingUid)
            .asStream()
            .map<AppAction>((_) => StopFollowingSuccessful(action.followingUid))
            .onErrorReturnWith((dynamic error) => StopFollowingError(error)));
  }

  Stream<AppAction> _updateServiceCoverPhoto(Stream<UpdateServiceCoverPhoto$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateServiceCoverPhoto$ action) => Stream<UpdateServiceCoverPhoto$>.value(action)
        .asyncMap((UpdateServiceCoverPhoto$ action) => _api.updateServiceCoverPhoto(action.serviceCoverPhotoUrl))
        .map((_) => const UpdateServiceCoverPhoto.successful())
        .onErrorReturnWith((dynamic error) => UpdateServiceCoverPhoto.error(error)));
  }

  Stream<AppAction> _updateServiceProfilePhoto(Stream<UpdateServiceProfilePhoto$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateServiceProfilePhoto$ action) => Stream<UpdateServiceProfilePhoto$>.value(action)
        .asyncMap((UpdateServiceProfilePhoto$ action) => _api.updateServiceProfilePhoto(action.serviceProfilePhotoUrl))
        .map((_) => const UpdateServiceProfilePhoto.successful())
        .onErrorReturnWith((dynamic error) => UpdateServiceProfilePhoto.error(error)));
  }

  Stream<AppAction> _updateFirstName(Stream<UpdateFirstName$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateFirstName$ action) => Stream<UpdateFirstName$>.value(action)
        .asyncMap((UpdateFirstName$ action) => _api.updateFirstName(action.firstName))
        .map((_) => const UpdateFirstName.successful())
        .onErrorReturnWith((dynamic error) => UpdateFirstName.error(error)));
  }

  Stream<AppAction> _updateLastName(Stream<UpdateLastName$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateLastName$ action) => Stream<UpdateLastName$>.value(action)
        .asyncMap((UpdateLastName$ action) => _api.updateLastName(action.lastName))
        .map((_) => const UpdateLastName.successful())
        .onErrorReturnWith((dynamic error) => UpdateLastName.error(error)));
  }

  Stream<AppAction> _updateServiceName(Stream<UpdateServiceName$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateServiceName$ action) => Stream<UpdateServiceName$>.value(action)
        .asyncMap((UpdateServiceName$ action) => _api.updateServiceName(action.serviceName))
        .map((_) => const UpdateServiceName.successful())
        .onErrorReturnWith((dynamic error) => UpdateServiceName.error(error)));
  }

  Stream<AppAction> _updateServiceLocation(Stream<UpdateServiceLocation$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateServiceLocation$ action) => Stream<UpdateServiceLocation$>.value(action)
        .asyncMap((UpdateServiceLocation$ action) => _api.updateServiceLocation(action.serviceLocation))
        .map((_) => const UpdateServiceLocation.successful())
        .onErrorReturnWith((dynamic error) => UpdateServiceLocation.error(error)));
  }

  Stream<AppAction> _updateServicePhone(Stream<UpdateServicePhone$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateServicePhone$ action) => Stream<UpdateServicePhone$>.value(action)
        .asyncMap((UpdateServicePhone$ action) => _api.updateServicePhone(action.servicePhone))
        .map((_) => const UpdateServicePhone.successful())
        .onErrorReturnWith((dynamic error) => UpdateServicePhone.error(error)));
  }

  Stream<AppAction> _updateIsAutoElectricianService(Stream<UpdateIsAutoElectricianService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsAutoElectricianService$ action) => Stream<UpdateIsAutoElectricianService$>.value(action)
        .asyncMap((UpdateIsAutoElectricianService$ action) => _api.updateIsAutoElectricianService(action.isAutoElectricianService))
        .map((_) => const UpdateIsAutoElectricianService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsAutoElectricianService.error(error)));
  }

  Stream<AppAction> _updateIsCarBodyRepairsService(Stream<UpdateIsCarBodyRepairsService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsCarBodyRepairsService$ action) => Stream<UpdateIsCarBodyRepairsService$>.value(action)
        .asyncMap((UpdateIsCarBodyRepairsService$ action) => _api.updateIsCarBodyRepairsService(action.isCarBodyRepairsService))
        .map((_) => const UpdateIsCarBodyRepairsService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsCarBodyRepairsService.error(error)));
  }

  Stream<AppAction> _updateIsCarDealershipService(Stream<UpdateIsCarDealershipService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsCarDealershipService$ action) => Stream<UpdateIsCarDealershipService$>.value(action)
        .asyncMap((UpdateIsCarDealershipService$ action) => _api.updateIsCarDealershipService(action.isCarDealershipService))
        .map((_) => const UpdateIsCarDealershipService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsCarDealershipService.error(error)));
  }

  Stream<AppAction> _updateIsCarDiagnosticsService(Stream<UpdateIsCarDiagnosticsService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsCarDiagnosticsService$ action) => Stream<UpdateIsCarDiagnosticsService$>.value(action)
        .asyncMap((UpdateIsCarDiagnosticsService$ action) => _api.updateIsCarDiagnosticsService(action.isCarDiagnosticsService))
        .map((_) => const UpdateIsCarDiagnosticsService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsCarDiagnosticsService.error(error)));
  }

  Stream<AppAction> _updateIsCarInssuranceService(Stream<UpdateIsCarInssuranceService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsCarInssuranceService$ action) => Stream<UpdateIsCarInssuranceService$>.value(action)
        .asyncMap((UpdateIsCarInssuranceService$ action) => _api.updateIsCarInssuranceService(action.isCarInssuranceService))
        .map((_) => const UpdateIsCarInssuranceService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsCarInssuranceService.error(error)));
  }

  Stream<AppAction> _updateIsCarRentalService(Stream<UpdateIsCarRentalService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsCarRentalService$ action) => Stream<UpdateIsCarRentalService$>.value(action)
        .asyncMap((UpdateIsCarRentalService$ action) => _api.updateIsCarRentalService(action.isCarRentalService))
        .map((_) => const UpdateIsCarRentalService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsCarRentalService.error(error)));
  }

  Stream<AppAction> _updateIsDetailingService(Stream<UpdateIsDetailingService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsDetailingService$ action) => Stream<UpdateIsDetailingService$>.value(action)
        .asyncMap((UpdateIsDetailingService$ action) => _api.updateIsDetailingService(action.isDetailingService))
        .map((_) => const UpdateIsDetailingService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsDetailingService.error(error)));
  }

  Stream<AppAction> _updateIsEngineDecarbonizationService(Stream<UpdateIsEngineDecarbonizationService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsEngineDecarbonizationService$ action) => Stream<UpdateIsEngineDecarbonizationService$>.value(action)
        .asyncMap((UpdateIsEngineDecarbonizationService$ action) => _api.updateIsEngineDecarbonizationService(action.isEngineDecarbonizationService))
        .map((_) => const UpdateIsEngineDecarbonizationService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsEngineDecarbonizationService.error(error)));
  }

  Stream<AppAction> _updateIsParticleFilterCleaningService(Stream<UpdateIsParticleFilterCleaningService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsParticleFilterCleaningService$ action) => Stream<UpdateIsParticleFilterCleaningService$>.value(action)
        .asyncMap((UpdateIsParticleFilterCleaningService$ action) => _api.updateIsParticleFilterCleaningService(action.isParticleFilterCleaningService))
        .map((_) => const UpdateIsParticleFilterCleaningService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsParticleFilterCleaningService.error(error)));
  }

  Stream<AppAction> _updateIsServiceAndRepairs(Stream<UpdateIsServiceAndRepairs$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsServiceAndRepairs$ action) => Stream<UpdateIsServiceAndRepairs$>.value(action)
        .asyncMap((UpdateIsServiceAndRepairs$ action) => _api.updateIsServiceAndRepairs(action.isServiceAndRepairs))
        .map((_) => const UpdateIsServiceAndRepairs.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsServiceAndRepairs.error(error)));
  }

  Stream<AppAction> _updateIsTowingService(Stream<UpdateIsTowingService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsTowingService$ action) => Stream<UpdateIsTowingService$>.value(action)
        .asyncMap((UpdateIsTowingService$ action) => _api.updateIsTowingService(action.isTowingService))
        .map((_) => const UpdateIsTowingService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsTowingService.error(error)));
  }

  Stream<AppAction> _updateIsTuningService(Stream<UpdateIsTuningService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsTuningService$ action) => Stream<UpdateIsTuningService$>.value(action)
        .asyncMap((UpdateIsTuningService$ action) => _api.updateIsTuningService(action.isTuningService))
        .map((_) => const UpdateIsTuningService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsTuningService.error(error)));
  }

  Stream<AppAction> _updateIsVulcanisingService(Stream<UpdateIsVulcanisingService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsVulcanisingService$ action) => Stream<UpdateIsVulcanisingService$>.value(action)
        .asyncMap((UpdateIsVulcanisingService$ action) => _api.updateIsVulcanisingService(action.isVulcanisingService))
        .map((_) => const UpdateIsVulcanisingService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsVulcanisingService.error(error)));
  }

  Stream<AppAction> _updateIsWrappingService(Stream<UpdateIsWrappingService$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsWrappingService$ action) => Stream<UpdateIsWrappingService$>.value(action)
        .asyncMap((UpdateIsWrappingService$ action) => _api.updateIsWrappingService(action.isWrappingService))
        .map((_) => const UpdateIsWrappingService.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsWrappingService.error(error)));
  }

  Stream<AppAction> _updateServiceDescription(Stream<UpdateServiceDescription$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateServiceDescription$ action) => Stream<UpdateServiceDescription$>.value(action)
        .asyncMap((UpdateServiceDescription$ action) => _api.updateServiceDescription(action.serviceDescription))
        .map((_) => const UpdateServiceDescription.successful())
        .onErrorReturnWith((dynamic error) => UpdateServiceDescription.error(error)));
  }

  Stream<AppAction> _updateMondayServiceHours(Stream<UpdateMondayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateMondayServiceHours$ action) => Stream<UpdateMondayServiceHours$>.value(action)
        .asyncMap((UpdateMondayServiceHours$ action) => _api.updateMondayServiceHours(action.mondayServiceHours))
        .map((_) => const UpdateMondayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateMondayServiceHours.error(error)));
  }

  Stream<AppAction> _updateTuesdayServiceHours(Stream<UpdateTuesdayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateTuesdayServiceHours$ action) => Stream<UpdateTuesdayServiceHours$>.value(action)
        .asyncMap((UpdateTuesdayServiceHours$ action) => _api.updateTuesdayServiceHours(action.tuesdayServiceHours))
        .map((_) => const UpdateTuesdayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateTuesdayServiceHours.error(error)));
  }

  Stream<AppAction> _updateWednesdayServiceHours(Stream<UpdateWednesdayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateWednesdayServiceHours$ action) => Stream<UpdateWednesdayServiceHours$>.value(action)
        .asyncMap((UpdateWednesdayServiceHours$ action) => _api.updateWednesdayServiceHours(action.wednesdayServiceHours))
        .map((_) => const UpdateWednesdayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateWednesdayServiceHours.error(error)));
  }

  Stream<AppAction> _updateThursdayServiceHours(Stream<UpdateThursdayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateThursdayServiceHours$ action) => Stream<UpdateThursdayServiceHours$>.value(action)
        .asyncMap((UpdateThursdayServiceHours$ action) => _api.updateThursdayServiceHours(action.thursdayServiceHours))
        .map((_) => const UpdateThursdayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateThursdayServiceHours.error(error)));
  }

  Stream<AppAction> _updateFridayServiceHours(Stream<UpdateFridayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateFridayServiceHours$ action) => Stream<UpdateFridayServiceHours$>.value(action)
        .asyncMap((UpdateFridayServiceHours$ action) => _api.updateFridayServiceHours(action.fridayServiceHours))
        .map((_) => const UpdateFridayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateFridayServiceHours.error(error)));
  }

  Stream<AppAction> _updateSaturdayServiceHours(Stream<UpdateSaturdayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateSaturdayServiceHours$ action) => Stream<UpdateSaturdayServiceHours$>.value(action)
        .asyncMap((UpdateSaturdayServiceHours$ action) => _api.updateSaturdayServiceHours(action.saturdayServiceHours))
        .map((_) => const UpdateSaturdayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateSaturdayServiceHours.error(error)));
  }

  Stream<AppAction> _updateSundayServiceHours(Stream<UpdateSundayServiceHours$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateSundayServiceHours$ action) => Stream<UpdateSundayServiceHours$>.value(action)
        .asyncMap((UpdateSundayServiceHours$ action) => _api.updateSundayServiceHours(action.sundayServiceHours))
        .map((_) => const UpdateSundayServiceHours.successful())
        .onErrorReturnWith((dynamic error) => UpdateSundayServiceHours.error(error)));
  }

  Stream<AppAction> _updateIsServiceAvailable(Stream<UpdateIsServiceAvailable$> actions, EpicStore<AppState> store) {
    return actions
        .flatMap((UpdateIsServiceAvailable$ action) => Stream<UpdateIsServiceAvailable$>.value(action)
        .asyncMap((UpdateIsServiceAvailable$ action) => _api.updateIsServiceAvailable(action.isServiceAvailable))
        .map((_) => const UpdateIsServiceAvailable.successful())
        .onErrorReturnWith((dynamic error) => UpdateIsServiceAvailable.error(error)));
  }
}

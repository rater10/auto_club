import 'package:auto_club/src/actions/auth/get_contact.dart';
import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/actions/auth/start_following.dart';
import 'package:auto_club/src/actions/auth/stop_following.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, RegisterSuccessful>(_registerSuccessful),
  TypedReducer<AuthState, UpdateRegisterInfo>(_updateRegisterInfo),
  TypedReducer<AuthState, StartFollowingSuccessful>(_startFollowingSuccessful),
  TypedReducer<AuthState, StopFollowingSuccessful>(_stopFollowingSuccessful),
  TypedReducer<AuthState, GetContactSuccessful>(_getContactSuccessful),
  TypedReducer<AuthState, SearchUsersSuccessful>(_searchUsersSuccessful),
]);

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _registerSuccessful(AuthState state, RegisterSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegisterInfo(AuthState state, UpdateRegisterInfo action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    } else if (action.password != null) {
      b.info.password = action.password;
    } else if (action.username != null) {
      b.info.username = action.username;
    } else if (action.birthDate != null) {
      b.info.birthDate = action.birthDate;
  } else if (action.location != null) {
      b.info.location = action.location;
  } else if (action.cars != null) {
      b.info.cars = action.cars;
  } else if (action.photoUrl != null) {
      b.info.photoUrl = action.photoUrl;
  } else if (action.firstName != null) {
      b.info.firstName = action.firstName;
  } else if (action.lastName != null) {
      b.info.lastName = action.lastName;
  } else if (action.serviceName != null) {
      b.info.serviceName = action.serviceName;
  } else if (action.serviceLocation != null) {
      b.info.serviceLocation = action.serviceLocation;
  } else if (action.servicePhone != null) {
      b.info.servicePhone = action.servicePhone;
  } else if (action.isAutoElectricianService != null) {
      b.info.isAutoElectricianService = action.isAutoElectricianService;
  } else if (action.isCarBodyRepairsService != null) {
      b.info.isCarBodyRepairsService = action.isCarBodyRepairsService;
  } else if (action.isCarDealershipService != null) {
      b.info.isCarDealershipService = action.isCarDealershipService;
  } else if (action.isCarDiagnosticsService != null) {
      b.info.isCarDiagnosticsService = action.isCarDiagnosticsService;
  } else if (action.isCarInssuranceService != null) {
      b.info.isCarInssuranceService = action.isCarInssuranceService;
  } else if (action.isCarRentalService != null) {
      b.info.isCarRentalService = action.isCarRentalService;
  } else if (action.isDetailingService != null) {
      b.info.isDetailingService = action.isDetailingService;
  } else if (action.isEngineDecarbonizationService != null) {
      b.info.isEngineDecarbonizationService = action.isEngineDecarbonizationService;
  } else if (action.isParticleFilterCleaningService != null) {
      b.info.isParticleFilterCleaningService = action.isParticleFilterCleaningService;
  } else if (action.isServiceAndRepairs != null) {
      b.info.isServiceAndRepairs = action.isServiceAndRepairs;
  } else if (action.isTowingService != null) {
      b.info.isTowingService = action.isTowingService;
  } else if (action.isTuningService != null) {
      b.info.isTuningService = action.isTuningService;
  } else if (action.isVulcanisingService != null) {
      b.info.isVulcanisingService = action.isVulcanisingService;
  } else if (action.isWrappingService != null) {
      b.info.isWrappingService = action.isWrappingService;
  } else if (action.serviceDescription != null) {
      b.info.serviceDescription = action.serviceDescription;
  } else if (action.mondayServiceHours != null) {
      b.info.mondayServiceHours = action.mondayServiceHours;
  } else if (action.tuesdayServiceHours != null) {
      b.info.tuesdayServiceHours = action.tuesdayServiceHours;
  } else if (action.wednesdayServiceHours != null) {
      b.info.wednesdayServiceHours = action.wednesdayServiceHours;
  } else if (action.thursdayServiceHours != null) {
      b.info.thursdayServiceHours = action.thursdayServiceHours;
  } else if (action.fridayServiceHours != null) {
      b.info.fridayServiceHours = action.fridayServiceHours;
  } else if (action.saturdayServiceHours != null) {
      b.info.saturdayServiceHours = action.saturdayServiceHours;
  } else if (action.sundayServiceHours != null) {
      b.info.sundayServiceHours = action.sundayServiceHours;
  } else if (action.isServiceAvailable != null) {
      b.info.isServiceAvailable = action.isServiceAvailable;
  } else if (action.serviceCoverPhotoUrl != null) {
      b.info.serviceCoverPhotoUrl = action.serviceCoverPhotoUrl;
  } else if (action.serviceProfilePhotoUrl != null) {
      b.info.serviceProfilePhotoUrl = action.serviceProfilePhotoUrl;
  } else {
      b.info = RegisterInfo().toBuilder();
    }
  });
}

AuthState _startFollowingSuccessful(AuthState state, StartFollowingSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = state.user.rebuild((AppUserBuilder b) => b.following.add(action.followingUid)).toBuilder();
  });
}

AuthState _stopFollowingSuccessful(AuthState state, StopFollowingSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = state.user.rebuild((AppUserBuilder b) => b.following.remove(action.followingUid)).toBuilder();
  });
}

AuthState _getContactSuccessful(AuthState state, GetContactSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.contacts[action.user.uid] = action.user;
  });
}

AuthState _searchUsersSuccessful(AuthState state, SearchUsersSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.searchResult = ListBuilder<AppUser>(action.users);
  });
}

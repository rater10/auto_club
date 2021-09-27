// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<RegisterInfo> _$registerInfoSerializer =
    new _$RegisterInfoSerializer();

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'following',
      serializers.serialize(object.following,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'searchIndex',
      serializers.serialize(object.searchIndex,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.birthDate != null) {
      result
        ..add('birthDate')
        ..add(serializers.serialize(object.birthDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.cars != null) {
      result
        ..add('cars')
        ..add(serializers.serialize(object.cars,
            specifiedType: const FullType(String)));
    }
    if (object.photoUrl != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(object.photoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.serviceName != null) {
      result
        ..add('serviceName')
        ..add(serializers.serialize(object.serviceName,
            specifiedType: const FullType(String)));
    }
    if (object.serviceLocation != null) {
      result
        ..add('serviceLocation')
        ..add(serializers.serialize(object.serviceLocation,
            specifiedType: const FullType(String)));
    }
    if (object.servicePhone != null) {
      result
        ..add('servicePhone')
        ..add(serializers.serialize(object.servicePhone,
            specifiedType: const FullType(String)));
    }
    if (object.isAutoElectricianService != null) {
      result
        ..add('isAutoElectricianService')
        ..add(serializers.serialize(object.isAutoElectricianService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarBodyRepairsService != null) {
      result
        ..add('isCarBodyRepairsService')
        ..add(serializers.serialize(object.isCarBodyRepairsService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarDealershipService != null) {
      result
        ..add('isCarDealershipService')
        ..add(serializers.serialize(object.isCarDealershipService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarDiagnosticsService != null) {
      result
        ..add('isCarDiagnosticsService')
        ..add(serializers.serialize(object.isCarDiagnosticsService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarInssuranceService != null) {
      result
        ..add('isCarInssuranceService')
        ..add(serializers.serialize(object.isCarInssuranceService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarRentalService != null) {
      result
        ..add('isCarRentalService')
        ..add(serializers.serialize(object.isCarRentalService,
            specifiedType: const FullType(bool)));
    }
    if (object.isDetailingService != null) {
      result
        ..add('isDetailingService')
        ..add(serializers.serialize(object.isDetailingService,
            specifiedType: const FullType(bool)));
    }
    if (object.isEngineDecarbonizationService != null) {
      result
        ..add('isEngineDecarbonizationService')
        ..add(serializers.serialize(object.isEngineDecarbonizationService,
            specifiedType: const FullType(bool)));
    }
    if (object.isParticleFilterCleaningService != null) {
      result
        ..add('isParticleFilterCleaningService')
        ..add(serializers.serialize(object.isParticleFilterCleaningService,
            specifiedType: const FullType(bool)));
    }
    if (object.isServiceAndRepairs != null) {
      result
        ..add('isServiceAndRepairs')
        ..add(serializers.serialize(object.isServiceAndRepairs,
            specifiedType: const FullType(bool)));
    }
    if (object.isTowingService != null) {
      result
        ..add('isTowingService')
        ..add(serializers.serialize(object.isTowingService,
            specifiedType: const FullType(bool)));
    }
    if (object.isTuningService != null) {
      result
        ..add('isTuningService')
        ..add(serializers.serialize(object.isTuningService,
            specifiedType: const FullType(bool)));
    }
    if (object.isVulcanisingService != null) {
      result
        ..add('isVulcanisingService')
        ..add(serializers.serialize(object.isVulcanisingService,
            specifiedType: const FullType(bool)));
    }
    if (object.isWrappingService != null) {
      result
        ..add('isWrappingService')
        ..add(serializers.serialize(object.isWrappingService,
            specifiedType: const FullType(bool)));
    }
    if (object.serviceDescription != null) {
      result
        ..add('serviceDescription')
        ..add(serializers.serialize(object.serviceDescription,
            specifiedType: const FullType(String)));
    }
    if (object.mondayServiceHours != null) {
      result
        ..add('mondayServiceHours')
        ..add(serializers.serialize(object.mondayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.tuesdayServiceHours != null) {
      result
        ..add('tuesdayServiceHours')
        ..add(serializers.serialize(object.tuesdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.wednesdayServiceHours != null) {
      result
        ..add('wednesdayServiceHours')
        ..add(serializers.serialize(object.wednesdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.thursdayServiceHours != null) {
      result
        ..add('thursdayServiceHours')
        ..add(serializers.serialize(object.thursdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.fridayServiceHours != null) {
      result
        ..add('fridayServiceHours')
        ..add(serializers.serialize(object.fridayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.saturdayServiceHours != null) {
      result
        ..add('saturdayServiceHours')
        ..add(serializers.serialize(object.saturdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.sundayServiceHours != null) {
      result
        ..add('sundayServiceHours')
        ..add(serializers.serialize(object.sundayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.isServiceAvailable != null) {
      result
        ..add('isServiceAvailable')
        ..add(serializers.serialize(object.isServiceAvailable,
            specifiedType: const FullType(bool)));
    }
    if (object.serviceCoverPhotoUrl != null) {
      result
        ..add('serviceCoverPhotoUrl')
        ..add(serializers.serialize(object.serviceCoverPhotoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.serviceProfilePhotoUrl != null) {
      result
        ..add('serviceProfilePhotoUrl')
        ..add(serializers.serialize(object.serviceProfilePhotoUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cars':
          result.cars = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'following':
          result.following.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'searchIndex':
          result.searchIndex.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceName':
          result.serviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceLocation':
          result.serviceLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'servicePhone':
          result.servicePhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAutoElectricianService':
          result.isAutoElectricianService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarBodyRepairsService':
          result.isCarBodyRepairsService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarDealershipService':
          result.isCarDealershipService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarDiagnosticsService':
          result.isCarDiagnosticsService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarInssuranceService':
          result.isCarInssuranceService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarRentalService':
          result.isCarRentalService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isDetailingService':
          result.isDetailingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isEngineDecarbonizationService':
          result.isEngineDecarbonizationService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isParticleFilterCleaningService':
          result.isParticleFilterCleaningService = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'isServiceAndRepairs':
          result.isServiceAndRepairs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTowingService':
          result.isTowingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTuningService':
          result.isTuningService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isVulcanisingService':
          result.isVulcanisingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isWrappingService':
          result.isWrappingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'serviceDescription':
          result.serviceDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mondayServiceHours':
          result.mondayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tuesdayServiceHours':
          result.tuesdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wednesdayServiceHours':
          result.wednesdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thursdayServiceHours':
          result.thursdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fridayServiceHours':
          result.fridayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'saturdayServiceHours':
          result.saturdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sundayServiceHours':
          result.sundayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isServiceAvailable':
          result.isServiceAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'serviceCoverPhotoUrl':
          result.serviceCoverPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceProfilePhotoUrl':
          result.serviceProfilePhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(RegisterInfo)),
      'contacts',
      serializers.serialize(object.contacts,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)])),
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AppUser)])),
    ];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser)) as AppUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(RegisterInfo)) as RegisterInfo);
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(AppUser)])));
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppUser)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterInfoSerializer implements StructuredSerializer<RegisterInfo> {
  @override
  final Iterable<Type> types = const [RegisterInfo, _$RegisterInfo];
  @override
  final String wireName = 'RegisterInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, RegisterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.birthDate != null) {
      result
        ..add('birthDate')
        ..add(serializers.serialize(object.birthDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.cars != null) {
      result
        ..add('cars')
        ..add(serializers.serialize(object.cars,
            specifiedType: const FullType(String)));
    }
    if (object.photoUrl != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(object.photoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.serviceName != null) {
      result
        ..add('serviceName')
        ..add(serializers.serialize(object.serviceName,
            specifiedType: const FullType(String)));
    }
    if (object.serviceLocation != null) {
      result
        ..add('serviceLocation')
        ..add(serializers.serialize(object.serviceLocation,
            specifiedType: const FullType(String)));
    }
    if (object.servicePhone != null) {
      result
        ..add('servicePhone')
        ..add(serializers.serialize(object.servicePhone,
            specifiedType: const FullType(String)));
    }
    if (object.isAutoElectricianService != null) {
      result
        ..add('isAutoElectricianService')
        ..add(serializers.serialize(object.isAutoElectricianService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarBodyRepairsService != null) {
      result
        ..add('isCarBodyRepairsService')
        ..add(serializers.serialize(object.isCarBodyRepairsService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarDealershipService != null) {
      result
        ..add('isCarDealershipService')
        ..add(serializers.serialize(object.isCarDealershipService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarDiagnosticsService != null) {
      result
        ..add('isCarDiagnosticsService')
        ..add(serializers.serialize(object.isCarDiagnosticsService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarInssuranceService != null) {
      result
        ..add('isCarInssuranceService')
        ..add(serializers.serialize(object.isCarInssuranceService,
            specifiedType: const FullType(bool)));
    }
    if (object.isCarRentalService != null) {
      result
        ..add('isCarRentalService')
        ..add(serializers.serialize(object.isCarRentalService,
            specifiedType: const FullType(bool)));
    }
    if (object.isDetailingService != null) {
      result
        ..add('isDetailingService')
        ..add(serializers.serialize(object.isDetailingService,
            specifiedType: const FullType(bool)));
    }
    if (object.isEngineDecarbonizationService != null) {
      result
        ..add('isEngineDecarbonizationService')
        ..add(serializers.serialize(object.isEngineDecarbonizationService,
            specifiedType: const FullType(bool)));
    }
    if (object.isParticleFilterCleaningService != null) {
      result
        ..add('isParticleFilterCleaningService')
        ..add(serializers.serialize(object.isParticleFilterCleaningService,
            specifiedType: const FullType(bool)));
    }
    if (object.isServiceAndRepairs != null) {
      result
        ..add('isServiceAndRepairs')
        ..add(serializers.serialize(object.isServiceAndRepairs,
            specifiedType: const FullType(bool)));
    }
    if (object.isTowingService != null) {
      result
        ..add('isTowingService')
        ..add(serializers.serialize(object.isTowingService,
            specifiedType: const FullType(bool)));
    }
    if (object.isTuningService != null) {
      result
        ..add('isTuningService')
        ..add(serializers.serialize(object.isTuningService,
            specifiedType: const FullType(bool)));
    }
    if (object.isVulcanisingService != null) {
      result
        ..add('isVulcanisingService')
        ..add(serializers.serialize(object.isVulcanisingService,
            specifiedType: const FullType(bool)));
    }
    if (object.isWrappingService != null) {
      result
        ..add('isWrappingService')
        ..add(serializers.serialize(object.isWrappingService,
            specifiedType: const FullType(bool)));
    }
    if (object.serviceDescription != null) {
      result
        ..add('serviceDescription')
        ..add(serializers.serialize(object.serviceDescription,
            specifiedType: const FullType(String)));
    }
    if (object.mondayServiceHours != null) {
      result
        ..add('mondayServiceHours')
        ..add(serializers.serialize(object.mondayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.tuesdayServiceHours != null) {
      result
        ..add('tuesdayServiceHours')
        ..add(serializers.serialize(object.tuesdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.wednesdayServiceHours != null) {
      result
        ..add('wednesdayServiceHours')
        ..add(serializers.serialize(object.wednesdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.thursdayServiceHours != null) {
      result
        ..add('thursdayServiceHours')
        ..add(serializers.serialize(object.thursdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.fridayServiceHours != null) {
      result
        ..add('fridayServiceHours')
        ..add(serializers.serialize(object.fridayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.saturdayServiceHours != null) {
      result
        ..add('saturdayServiceHours')
        ..add(serializers.serialize(object.saturdayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.sundayServiceHours != null) {
      result
        ..add('sundayServiceHours')
        ..add(serializers.serialize(object.sundayServiceHours,
            specifiedType: const FullType(String)));
    }
    if (object.isServiceAvailable != null) {
      result
        ..add('isServiceAvailable')
        ..add(serializers.serialize(object.isServiceAvailable,
            specifiedType: const FullType(bool)));
    }
    if (object.serviceCoverPhotoUrl != null) {
      result
        ..add('serviceCoverPhotoUrl')
        ..add(serializers.serialize(object.serviceCoverPhotoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.serviceProfilePhotoUrl != null) {
      result
        ..add('serviceProfilePhotoUrl')
        ..add(serializers.serialize(object.serviceProfilePhotoUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RegisterInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cars':
          result.cars = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceName':
          result.serviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceLocation':
          result.serviceLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'servicePhone':
          result.servicePhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAutoElectricianService':
          result.isAutoElectricianService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarBodyRepairsService':
          result.isCarBodyRepairsService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarDealershipService':
          result.isCarDealershipService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarDiagnosticsService':
          result.isCarDiagnosticsService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarInssuranceService':
          result.isCarInssuranceService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCarRentalService':
          result.isCarRentalService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isDetailingService':
          result.isDetailingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isEngineDecarbonizationService':
          result.isEngineDecarbonizationService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isParticleFilterCleaningService':
          result.isParticleFilterCleaningService = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'isServiceAndRepairs':
          result.isServiceAndRepairs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTowingService':
          result.isTowingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTuningService':
          result.isTuningService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isVulcanisingService':
          result.isVulcanisingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isWrappingService':
          result.isWrappingService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'serviceDescription':
          result.serviceDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mondayServiceHours':
          result.mondayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tuesdayServiceHours':
          result.tuesdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wednesdayServiceHours':
          result.wednesdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thursdayServiceHours':
          result.thursdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fridayServiceHours':
          result.fridayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'saturdayServiceHours':
          result.saturdayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sundayServiceHours':
          result.sundayServiceHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isServiceAvailable':
          result.isServiceAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'serviceCoverPhotoUrl':
          result.serviceCoverPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceProfilePhotoUrl':
          result.serviceProfilePhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final DateTime birthDate;
  @override
  final String location;
  @override
  final String cars;
  @override
  final String photoUrl;
  @override
  final BuiltList<String> following;
  @override
  final BuiltList<String> searchIndex;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String serviceName;
  @override
  final String serviceLocation;
  @override
  final String servicePhone;
  @override
  final bool isAutoElectricianService;
  @override
  final bool isCarBodyRepairsService;
  @override
  final bool isCarDealershipService;
  @override
  final bool isCarDiagnosticsService;
  @override
  final bool isCarInssuranceService;
  @override
  final bool isCarRentalService;
  @override
  final bool isDetailingService;
  @override
  final bool isEngineDecarbonizationService;
  @override
  final bool isParticleFilterCleaningService;
  @override
  final bool isServiceAndRepairs;
  @override
  final bool isTowingService;
  @override
  final bool isTuningService;
  @override
  final bool isVulcanisingService;
  @override
  final bool isWrappingService;
  @override
  final String serviceDescription;
  @override
  final String mondayServiceHours;
  @override
  final String tuesdayServiceHours;
  @override
  final String wednesdayServiceHours;
  @override
  final String thursdayServiceHours;
  @override
  final String fridayServiceHours;
  @override
  final String saturdayServiceHours;
  @override
  final String sundayServiceHours;
  @override
  final bool isServiceAvailable;
  @override
  final String serviceCoverPhotoUrl;
  @override
  final String serviceProfilePhotoUrl;

  factory _$AppUser([void Function(AppUserBuilder) updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._(
      {this.uid,
      this.email,
      this.username,
      this.birthDate,
      this.location,
      this.cars,
      this.photoUrl,
      this.following,
      this.searchIndex,
      this.firstName,
      this.lastName,
      this.serviceName,
      this.serviceLocation,
      this.servicePhone,
      this.isAutoElectricianService,
      this.isCarBodyRepairsService,
      this.isCarDealershipService,
      this.isCarDiagnosticsService,
      this.isCarInssuranceService,
      this.isCarRentalService,
      this.isDetailingService,
      this.isEngineDecarbonizationService,
      this.isParticleFilterCleaningService,
      this.isServiceAndRepairs,
      this.isTowingService,
      this.isTuningService,
      this.isVulcanisingService,
      this.isWrappingService,
      this.serviceDescription,
      this.mondayServiceHours,
      this.tuesdayServiceHours,
      this.wednesdayServiceHours,
      this.thursdayServiceHours,
      this.fridayServiceHours,
      this.saturdayServiceHours,
      this.sundayServiceHours,
      this.isServiceAvailable,
      this.serviceCoverPhotoUrl,
      this.serviceProfilePhotoUrl})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('AppUser', 'uid');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('AppUser', 'email');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('AppUser', 'username');
    }
    if (following == null) {
      throw new BuiltValueNullFieldError('AppUser', 'following');
    }
    if (searchIndex == null) {
      throw new BuiltValueNullFieldError('AppUser', 'searchIndex');
    }
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        email == other.email &&
        username == other.username &&
        birthDate == other.birthDate &&
        location == other.location &&
        cars == other.cars &&
        photoUrl == other.photoUrl &&
        following == other.following &&
        searchIndex == other.searchIndex &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        serviceName == other.serviceName &&
        serviceLocation == other.serviceLocation &&
        servicePhone == other.servicePhone &&
        isAutoElectricianService == other.isAutoElectricianService &&
        isCarBodyRepairsService == other.isCarBodyRepairsService &&
        isCarDealershipService == other.isCarDealershipService &&
        isCarDiagnosticsService == other.isCarDiagnosticsService &&
        isCarInssuranceService == other.isCarInssuranceService &&
        isCarRentalService == other.isCarRentalService &&
        isDetailingService == other.isDetailingService &&
        isEngineDecarbonizationService ==
            other.isEngineDecarbonizationService &&
        isParticleFilterCleaningService ==
            other.isParticleFilterCleaningService &&
        isServiceAndRepairs == other.isServiceAndRepairs &&
        isTowingService == other.isTowingService &&
        isTuningService == other.isTuningService &&
        isVulcanisingService == other.isVulcanisingService &&
        isWrappingService == other.isWrappingService &&
        serviceDescription == other.serviceDescription &&
        mondayServiceHours == other.mondayServiceHours &&
        tuesdayServiceHours == other.tuesdayServiceHours &&
        wednesdayServiceHours == other.wednesdayServiceHours &&
        thursdayServiceHours == other.thursdayServiceHours &&
        fridayServiceHours == other.fridayServiceHours &&
        saturdayServiceHours == other.saturdayServiceHours &&
        sundayServiceHours == other.sundayServiceHours &&
        isServiceAvailable == other.isServiceAvailable &&
        serviceCoverPhotoUrl == other.serviceCoverPhotoUrl &&
        serviceProfilePhotoUrl == other.serviceProfilePhotoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, uid.hashCode), email.hashCode), username.hashCode), birthDate.hashCode), location.hashCode), cars.hashCode), photoUrl.hashCode), following.hashCode), searchIndex.hashCode), firstName.hashCode), lastName.hashCode), serviceName.hashCode), serviceLocation.hashCode), servicePhone.hashCode), isAutoElectricianService.hashCode), isCarBodyRepairsService.hashCode), isCarDealershipService.hashCode), isCarDiagnosticsService.hashCode), isCarInssuranceService.hashCode), isCarRentalService.hashCode),
                                                                                isDetailingService.hashCode),
                                                                            isEngineDecarbonizationService.hashCode),
                                                                        isParticleFilterCleaningService.hashCode),
                                                                    isServiceAndRepairs.hashCode),
                                                                isTowingService.hashCode),
                                                            isTuningService.hashCode),
                                                        isVulcanisingService.hashCode),
                                                    isWrappingService.hashCode),
                                                serviceDescription.hashCode),
                                            mondayServiceHours.hashCode),
                                        tuesdayServiceHours.hashCode),
                                    wednesdayServiceHours.hashCode),
                                thursdayServiceHours.hashCode),
                            fridayServiceHours.hashCode),
                        saturdayServiceHours.hashCode),
                    sundayServiceHours.hashCode),
                isServiceAvailable.hashCode),
            serviceCoverPhotoUrl.hashCode),
        serviceProfilePhotoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('username', username)
          ..add('birthDate', birthDate)
          ..add('location', location)
          ..add('cars', cars)
          ..add('photoUrl', photoUrl)
          ..add('following', following)
          ..add('searchIndex', searchIndex)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('serviceName', serviceName)
          ..add('serviceLocation', serviceLocation)
          ..add('servicePhone', servicePhone)
          ..add('isAutoElectricianService', isAutoElectricianService)
          ..add('isCarBodyRepairsService', isCarBodyRepairsService)
          ..add('isCarDealershipService', isCarDealershipService)
          ..add('isCarDiagnosticsService', isCarDiagnosticsService)
          ..add('isCarInssuranceService', isCarInssuranceService)
          ..add('isCarRentalService', isCarRentalService)
          ..add('isDetailingService', isDetailingService)
          ..add(
              'isEngineDecarbonizationService', isEngineDecarbonizationService)
          ..add('isParticleFilterCleaningService',
              isParticleFilterCleaningService)
          ..add('isServiceAndRepairs', isServiceAndRepairs)
          ..add('isTowingService', isTowingService)
          ..add('isTuningService', isTuningService)
          ..add('isVulcanisingService', isVulcanisingService)
          ..add('isWrappingService', isWrappingService)
          ..add('serviceDescription', serviceDescription)
          ..add('mondayServiceHours', mondayServiceHours)
          ..add('tuesdayServiceHours', tuesdayServiceHours)
          ..add('wednesdayServiceHours', wednesdayServiceHours)
          ..add('thursdayServiceHours', thursdayServiceHours)
          ..add('fridayServiceHours', fridayServiceHours)
          ..add('saturdayServiceHours', saturdayServiceHours)
          ..add('sundayServiceHours', sundayServiceHours)
          ..add('isServiceAvailable', isServiceAvailable)
          ..add('serviceCoverPhotoUrl', serviceCoverPhotoUrl)
          ..add('serviceProfilePhotoUrl', serviceProfilePhotoUrl))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  DateTime _birthDate;
  DateTime get birthDate => _$this._birthDate;
  set birthDate(DateTime birthDate) => _$this._birthDate = birthDate;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _cars;
  String get cars => _$this._cars;
  set cars(String cars) => _$this._cars = cars;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  ListBuilder<String> _following;
  ListBuilder<String> get following =>
      _$this._following ??= new ListBuilder<String>();
  set following(ListBuilder<String> following) => _$this._following = following;

  ListBuilder<String> _searchIndex;
  ListBuilder<String> get searchIndex =>
      _$this._searchIndex ??= new ListBuilder<String>();
  set searchIndex(ListBuilder<String> searchIndex) =>
      _$this._searchIndex = searchIndex;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _serviceName;
  String get serviceName => _$this._serviceName;
  set serviceName(String serviceName) => _$this._serviceName = serviceName;

  String _serviceLocation;
  String get serviceLocation => _$this._serviceLocation;
  set serviceLocation(String serviceLocation) =>
      _$this._serviceLocation = serviceLocation;

  String _servicePhone;
  String get servicePhone => _$this._servicePhone;
  set servicePhone(String servicePhone) => _$this._servicePhone = servicePhone;

  bool _isAutoElectricianService;
  bool get isAutoElectricianService => _$this._isAutoElectricianService;
  set isAutoElectricianService(bool isAutoElectricianService) =>
      _$this._isAutoElectricianService = isAutoElectricianService;

  bool _isCarBodyRepairsService;
  bool get isCarBodyRepairsService => _$this._isCarBodyRepairsService;
  set isCarBodyRepairsService(bool isCarBodyRepairsService) =>
      _$this._isCarBodyRepairsService = isCarBodyRepairsService;

  bool _isCarDealershipService;
  bool get isCarDealershipService => _$this._isCarDealershipService;
  set isCarDealershipService(bool isCarDealershipService) =>
      _$this._isCarDealershipService = isCarDealershipService;

  bool _isCarDiagnosticsService;
  bool get isCarDiagnosticsService => _$this._isCarDiagnosticsService;
  set isCarDiagnosticsService(bool isCarDiagnosticsService) =>
      _$this._isCarDiagnosticsService = isCarDiagnosticsService;

  bool _isCarInssuranceService;
  bool get isCarInssuranceService => _$this._isCarInssuranceService;
  set isCarInssuranceService(bool isCarInssuranceService) =>
      _$this._isCarInssuranceService = isCarInssuranceService;

  bool _isCarRentalService;
  bool get isCarRentalService => _$this._isCarRentalService;
  set isCarRentalService(bool isCarRentalService) =>
      _$this._isCarRentalService = isCarRentalService;

  bool _isDetailingService;
  bool get isDetailingService => _$this._isDetailingService;
  set isDetailingService(bool isDetailingService) =>
      _$this._isDetailingService = isDetailingService;

  bool _isEngineDecarbonizationService;
  bool get isEngineDecarbonizationService =>
      _$this._isEngineDecarbonizationService;
  set isEngineDecarbonizationService(bool isEngineDecarbonizationService) =>
      _$this._isEngineDecarbonizationService = isEngineDecarbonizationService;

  bool _isParticleFilterCleaningService;
  bool get isParticleFilterCleaningService =>
      _$this._isParticleFilterCleaningService;
  set isParticleFilterCleaningService(bool isParticleFilterCleaningService) =>
      _$this._isParticleFilterCleaningService = isParticleFilterCleaningService;

  bool _isServiceAndRepairs;
  bool get isServiceAndRepairs => _$this._isServiceAndRepairs;
  set isServiceAndRepairs(bool isServiceAndRepairs) =>
      _$this._isServiceAndRepairs = isServiceAndRepairs;

  bool _isTowingService;
  bool get isTowingService => _$this._isTowingService;
  set isTowingService(bool isTowingService) =>
      _$this._isTowingService = isTowingService;

  bool _isTuningService;
  bool get isTuningService => _$this._isTuningService;
  set isTuningService(bool isTuningService) =>
      _$this._isTuningService = isTuningService;

  bool _isVulcanisingService;
  bool get isVulcanisingService => _$this._isVulcanisingService;
  set isVulcanisingService(bool isVulcanisingService) =>
      _$this._isVulcanisingService = isVulcanisingService;

  bool _isWrappingService;
  bool get isWrappingService => _$this._isWrappingService;
  set isWrappingService(bool isWrappingService) =>
      _$this._isWrappingService = isWrappingService;

  String _serviceDescription;
  String get serviceDescription => _$this._serviceDescription;
  set serviceDescription(String serviceDescription) =>
      _$this._serviceDescription = serviceDescription;

  String _mondayServiceHours;
  String get mondayServiceHours => _$this._mondayServiceHours;
  set mondayServiceHours(String mondayServiceHours) =>
      _$this._mondayServiceHours = mondayServiceHours;

  String _tuesdayServiceHours;
  String get tuesdayServiceHours => _$this._tuesdayServiceHours;
  set tuesdayServiceHours(String tuesdayServiceHours) =>
      _$this._tuesdayServiceHours = tuesdayServiceHours;

  String _wednesdayServiceHours;
  String get wednesdayServiceHours => _$this._wednesdayServiceHours;
  set wednesdayServiceHours(String wednesdayServiceHours) =>
      _$this._wednesdayServiceHours = wednesdayServiceHours;

  String _thursdayServiceHours;
  String get thursdayServiceHours => _$this._thursdayServiceHours;
  set thursdayServiceHours(String thursdayServiceHours) =>
      _$this._thursdayServiceHours = thursdayServiceHours;

  String _fridayServiceHours;
  String get fridayServiceHours => _$this._fridayServiceHours;
  set fridayServiceHours(String fridayServiceHours) =>
      _$this._fridayServiceHours = fridayServiceHours;

  String _saturdayServiceHours;
  String get saturdayServiceHours => _$this._saturdayServiceHours;
  set saturdayServiceHours(String saturdayServiceHours) =>
      _$this._saturdayServiceHours = saturdayServiceHours;

  String _sundayServiceHours;
  String get sundayServiceHours => _$this._sundayServiceHours;
  set sundayServiceHours(String sundayServiceHours) =>
      _$this._sundayServiceHours = sundayServiceHours;

  bool _isServiceAvailable;
  bool get isServiceAvailable => _$this._isServiceAvailable;
  set isServiceAvailable(bool isServiceAvailable) =>
      _$this._isServiceAvailable = isServiceAvailable;

  String _serviceCoverPhotoUrl;
  String get serviceCoverPhotoUrl => _$this._serviceCoverPhotoUrl;
  set serviceCoverPhotoUrl(String serviceCoverPhotoUrl) =>
      _$this._serviceCoverPhotoUrl = serviceCoverPhotoUrl;

  String _serviceProfilePhotoUrl;
  String get serviceProfilePhotoUrl => _$this._serviceProfilePhotoUrl;
  set serviceProfilePhotoUrl(String serviceProfilePhotoUrl) =>
      _$this._serviceProfilePhotoUrl = serviceProfilePhotoUrl;

  AppUserBuilder();

  AppUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _email = _$v.email;
      _username = _$v.username;
      _birthDate = _$v.birthDate;
      _location = _$v.location;
      _cars = _$v.cars;
      _photoUrl = _$v.photoUrl;
      _following = _$v.following?.toBuilder();
      _searchIndex = _$v.searchIndex?.toBuilder();
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _serviceName = _$v.serviceName;
      _serviceLocation = _$v.serviceLocation;
      _servicePhone = _$v.servicePhone;
      _isAutoElectricianService = _$v.isAutoElectricianService;
      _isCarBodyRepairsService = _$v.isCarBodyRepairsService;
      _isCarDealershipService = _$v.isCarDealershipService;
      _isCarDiagnosticsService = _$v.isCarDiagnosticsService;
      _isCarInssuranceService = _$v.isCarInssuranceService;
      _isCarRentalService = _$v.isCarRentalService;
      _isDetailingService = _$v.isDetailingService;
      _isEngineDecarbonizationService = _$v.isEngineDecarbonizationService;
      _isParticleFilterCleaningService = _$v.isParticleFilterCleaningService;
      _isServiceAndRepairs = _$v.isServiceAndRepairs;
      _isTowingService = _$v.isTowingService;
      _isTuningService = _$v.isTuningService;
      _isVulcanisingService = _$v.isVulcanisingService;
      _isWrappingService = _$v.isWrappingService;
      _serviceDescription = _$v.serviceDescription;
      _mondayServiceHours = _$v.mondayServiceHours;
      _tuesdayServiceHours = _$v.tuesdayServiceHours;
      _wednesdayServiceHours = _$v.wednesdayServiceHours;
      _thursdayServiceHours = _$v.thursdayServiceHours;
      _fridayServiceHours = _$v.fridayServiceHours;
      _saturdayServiceHours = _$v.saturdayServiceHours;
      _sundayServiceHours = _$v.sundayServiceHours;
      _isServiceAvailable = _$v.isServiceAvailable;
      _serviceCoverPhotoUrl = _$v.serviceCoverPhotoUrl;
      _serviceProfilePhotoUrl = _$v.serviceProfilePhotoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    _$AppUser _$result;
    try {
      _$result = _$v ??
          new _$AppUser._(
              uid: uid,
              email: email,
              username: username,
              birthDate: birthDate,
              location: location,
              cars: cars,
              photoUrl: photoUrl,
              following: following.build(),
              searchIndex: searchIndex.build(),
              firstName: firstName,
              lastName: lastName,
              serviceName: serviceName,
              serviceLocation: serviceLocation,
              servicePhone: servicePhone,
              isAutoElectricianService: isAutoElectricianService,
              isCarBodyRepairsService: isCarBodyRepairsService,
              isCarDealershipService: isCarDealershipService,
              isCarDiagnosticsService: isCarDiagnosticsService,
              isCarInssuranceService: isCarInssuranceService,
              isCarRentalService: isCarRentalService,
              isDetailingService: isDetailingService,
              isEngineDecarbonizationService: isEngineDecarbonizationService,
              isParticleFilterCleaningService: isParticleFilterCleaningService,
              isServiceAndRepairs: isServiceAndRepairs,
              isTowingService: isTowingService,
              isTuningService: isTuningService,
              isVulcanisingService: isVulcanisingService,
              isWrappingService: isWrappingService,
              serviceDescription: serviceDescription,
              mondayServiceHours: mondayServiceHours,
              tuesdayServiceHours: tuesdayServiceHours,
              wednesdayServiceHours: wednesdayServiceHours,
              thursdayServiceHours: thursdayServiceHours,
              fridayServiceHours: fridayServiceHours,
              saturdayServiceHours: saturdayServiceHours,
              sundayServiceHours: sundayServiceHours,
              isServiceAvailable: isServiceAvailable,
              serviceCoverPhotoUrl: serviceCoverPhotoUrl,
              serviceProfilePhotoUrl: serviceProfilePhotoUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'following';
        following.build();
        _$failedField = 'searchIndex';
        searchIndex.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser user;
  @override
  final RegisterInfo info;
  @override
  final BuiltMap<String, AppUser> contacts;
  @override
  final BuiltList<AppUser> searchResult;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, this.info, this.contacts, this.searchResult})
      : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('AuthState', 'info');
    }
    if (contacts == null) {
      throw new BuiltValueNullFieldError('AuthState', 'contacts');
    }
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('AuthState', 'searchResult');
    }
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        user == other.user &&
        info == other.info &&
        contacts == other.contacts &&
        searchResult == other.searchResult;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), info.hashCode), contacts.hashCode),
        searchResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('info', info)
          ..add('contacts', contacts)
          ..add('searchResult', searchResult))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  RegisterInfoBuilder _info;
  RegisterInfoBuilder get info => _$this._info ??= new RegisterInfoBuilder();
  set info(RegisterInfoBuilder info) => _$this._info = info;

  MapBuilder<String, AppUser> _contacts;
  MapBuilder<String, AppUser> get contacts =>
      _$this._contacts ??= new MapBuilder<String, AppUser>();
  set contacts(MapBuilder<String, AppUser> contacts) =>
      _$this._contacts = contacts;

  ListBuilder<AppUser> _searchResult;
  ListBuilder<AppUser> get searchResult =>
      _$this._searchResult ??= new ListBuilder<AppUser>();
  set searchResult(ListBuilder<AppUser> searchResult) =>
      _$this._searchResult = searchResult;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _info = _$v.info?.toBuilder();
      _contacts = _$v.contacts?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(),
              info: info.build(),
              contacts: contacts.build(),
              searchResult: searchResult.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        info.build();
        _$failedField = 'contacts';
        contacts.build();
        _$failedField = 'searchResult';
        searchResult.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RegisterInfo extends RegisterInfo {
  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final DateTime birthDate;
  @override
  final String location;
  @override
  final String cars;
  @override
  final String photoUrl;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String serviceName;
  @override
  final String serviceLocation;
  @override
  final String servicePhone;
  @override
  final bool isAutoElectricianService;
  @override
  final bool isCarBodyRepairsService;
  @override
  final bool isCarDealershipService;
  @override
  final bool isCarDiagnosticsService;
  @override
  final bool isCarInssuranceService;
  @override
  final bool isCarRentalService;
  @override
  final bool isDetailingService;
  @override
  final bool isEngineDecarbonizationService;
  @override
  final bool isParticleFilterCleaningService;
  @override
  final bool isServiceAndRepairs;
  @override
  final bool isTowingService;
  @override
  final bool isTuningService;
  @override
  final bool isVulcanisingService;
  @override
  final bool isWrappingService;
  @override
  final String serviceDescription;
  @override
  final String mondayServiceHours;
  @override
  final String tuesdayServiceHours;
  @override
  final String wednesdayServiceHours;
  @override
  final String thursdayServiceHours;
  @override
  final String fridayServiceHours;
  @override
  final String saturdayServiceHours;
  @override
  final String sundayServiceHours;
  @override
  final bool isServiceAvailable;
  @override
  final String serviceCoverPhotoUrl;
  @override
  final String serviceProfilePhotoUrl;

  factory _$RegisterInfo([void Function(RegisterInfoBuilder) updates]) =>
      (new RegisterInfoBuilder()..update(updates)).build();

  _$RegisterInfo._(
      {this.email,
      this.password,
      this.username,
      this.birthDate,
      this.location,
      this.cars,
      this.photoUrl,
      this.firstName,
      this.lastName,
      this.serviceName,
      this.serviceLocation,
      this.servicePhone,
      this.isAutoElectricianService,
      this.isCarBodyRepairsService,
      this.isCarDealershipService,
      this.isCarDiagnosticsService,
      this.isCarInssuranceService,
      this.isCarRentalService,
      this.isDetailingService,
      this.isEngineDecarbonizationService,
      this.isParticleFilterCleaningService,
      this.isServiceAndRepairs,
      this.isTowingService,
      this.isTuningService,
      this.isVulcanisingService,
      this.isWrappingService,
      this.serviceDescription,
      this.mondayServiceHours,
      this.tuesdayServiceHours,
      this.wednesdayServiceHours,
      this.thursdayServiceHours,
      this.fridayServiceHours,
      this.saturdayServiceHours,
      this.sundayServiceHours,
      this.isServiceAvailable,
      this.serviceCoverPhotoUrl,
      this.serviceProfilePhotoUrl})
      : super._();

  @override
  RegisterInfo rebuild(void Function(RegisterInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInfoBuilder toBuilder() => new RegisterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInfo &&
        email == other.email &&
        password == other.password &&
        username == other.username &&
        birthDate == other.birthDate &&
        location == other.location &&
        cars == other.cars &&
        photoUrl == other.photoUrl &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        serviceName == other.serviceName &&
        serviceLocation == other.serviceLocation &&
        servicePhone == other.servicePhone &&
        isAutoElectricianService == other.isAutoElectricianService &&
        isCarBodyRepairsService == other.isCarBodyRepairsService &&
        isCarDealershipService == other.isCarDealershipService &&
        isCarDiagnosticsService == other.isCarDiagnosticsService &&
        isCarInssuranceService == other.isCarInssuranceService &&
        isCarRentalService == other.isCarRentalService &&
        isDetailingService == other.isDetailingService &&
        isEngineDecarbonizationService ==
            other.isEngineDecarbonizationService &&
        isParticleFilterCleaningService ==
            other.isParticleFilterCleaningService &&
        isServiceAndRepairs == other.isServiceAndRepairs &&
        isTowingService == other.isTowingService &&
        isTuningService == other.isTuningService &&
        isVulcanisingService == other.isVulcanisingService &&
        isWrappingService == other.isWrappingService &&
        serviceDescription == other.serviceDescription &&
        mondayServiceHours == other.mondayServiceHours &&
        tuesdayServiceHours == other.tuesdayServiceHours &&
        wednesdayServiceHours == other.wednesdayServiceHours &&
        thursdayServiceHours == other.thursdayServiceHours &&
        fridayServiceHours == other.fridayServiceHours &&
        saturdayServiceHours == other.saturdayServiceHours &&
        sundayServiceHours == other.sundayServiceHours &&
        isServiceAvailable == other.isServiceAvailable &&
        serviceCoverPhotoUrl == other.serviceCoverPhotoUrl &&
        serviceProfilePhotoUrl == other.serviceProfilePhotoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), password.hashCode), username.hashCode), birthDate.hashCode), location.hashCode), cars.hashCode), photoUrl.hashCode), firstName.hashCode), lastName.hashCode), serviceName.hashCode), serviceLocation.hashCode), servicePhone.hashCode), isAutoElectricianService.hashCode), isCarBodyRepairsService.hashCode), isCarDealershipService.hashCode), isCarDiagnosticsService.hashCode), isCarInssuranceService.hashCode), isCarRentalService.hashCode),
                                                                                isDetailingService.hashCode),
                                                                            isEngineDecarbonizationService.hashCode),
                                                                        isParticleFilterCleaningService.hashCode),
                                                                    isServiceAndRepairs.hashCode),
                                                                isTowingService.hashCode),
                                                            isTuningService.hashCode),
                                                        isVulcanisingService.hashCode),
                                                    isWrappingService.hashCode),
                                                serviceDescription.hashCode),
                                            mondayServiceHours.hashCode),
                                        tuesdayServiceHours.hashCode),
                                    wednesdayServiceHours.hashCode),
                                thursdayServiceHours.hashCode),
                            fridayServiceHours.hashCode),
                        saturdayServiceHours.hashCode),
                    sundayServiceHours.hashCode),
                isServiceAvailable.hashCode),
            serviceCoverPhotoUrl.hashCode),
        serviceProfilePhotoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterInfo')
          ..add('email', email)
          ..add('password', password)
          ..add('username', username)
          ..add('birthDate', birthDate)
          ..add('location', location)
          ..add('cars', cars)
          ..add('photoUrl', photoUrl)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('serviceName', serviceName)
          ..add('serviceLocation', serviceLocation)
          ..add('servicePhone', servicePhone)
          ..add('isAutoElectricianService', isAutoElectricianService)
          ..add('isCarBodyRepairsService', isCarBodyRepairsService)
          ..add('isCarDealershipService', isCarDealershipService)
          ..add('isCarDiagnosticsService', isCarDiagnosticsService)
          ..add('isCarInssuranceService', isCarInssuranceService)
          ..add('isCarRentalService', isCarRentalService)
          ..add('isDetailingService', isDetailingService)
          ..add(
              'isEngineDecarbonizationService', isEngineDecarbonizationService)
          ..add('isParticleFilterCleaningService',
              isParticleFilterCleaningService)
          ..add('isServiceAndRepairs', isServiceAndRepairs)
          ..add('isTowingService', isTowingService)
          ..add('isTuningService', isTuningService)
          ..add('isVulcanisingService', isVulcanisingService)
          ..add('isWrappingService', isWrappingService)
          ..add('serviceDescription', serviceDescription)
          ..add('mondayServiceHours', mondayServiceHours)
          ..add('tuesdayServiceHours', tuesdayServiceHours)
          ..add('wednesdayServiceHours', wednesdayServiceHours)
          ..add('thursdayServiceHours', thursdayServiceHours)
          ..add('fridayServiceHours', fridayServiceHours)
          ..add('saturdayServiceHours', saturdayServiceHours)
          ..add('sundayServiceHours', sundayServiceHours)
          ..add('isServiceAvailable', isServiceAvailable)
          ..add('serviceCoverPhotoUrl', serviceCoverPhotoUrl)
          ..add('serviceProfilePhotoUrl', serviceProfilePhotoUrl))
        .toString();
  }
}

class RegisterInfoBuilder
    implements Builder<RegisterInfo, RegisterInfoBuilder> {
  _$RegisterInfo _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  DateTime _birthDate;
  DateTime get birthDate => _$this._birthDate;
  set birthDate(DateTime birthDate) => _$this._birthDate = birthDate;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _cars;
  String get cars => _$this._cars;
  set cars(String cars) => _$this._cars = cars;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _serviceName;
  String get serviceName => _$this._serviceName;
  set serviceName(String serviceName) => _$this._serviceName = serviceName;

  String _serviceLocation;
  String get serviceLocation => _$this._serviceLocation;
  set serviceLocation(String serviceLocation) =>
      _$this._serviceLocation = serviceLocation;

  String _servicePhone;
  String get servicePhone => _$this._servicePhone;
  set servicePhone(String servicePhone) => _$this._servicePhone = servicePhone;

  bool _isAutoElectricianService;
  bool get isAutoElectricianService => _$this._isAutoElectricianService;
  set isAutoElectricianService(bool isAutoElectricianService) =>
      _$this._isAutoElectricianService = isAutoElectricianService;

  bool _isCarBodyRepairsService;
  bool get isCarBodyRepairsService => _$this._isCarBodyRepairsService;
  set isCarBodyRepairsService(bool isCarBodyRepairsService) =>
      _$this._isCarBodyRepairsService = isCarBodyRepairsService;

  bool _isCarDealershipService;
  bool get isCarDealershipService => _$this._isCarDealershipService;
  set isCarDealershipService(bool isCarDealershipService) =>
      _$this._isCarDealershipService = isCarDealershipService;

  bool _isCarDiagnosticsService;
  bool get isCarDiagnosticsService => _$this._isCarDiagnosticsService;
  set isCarDiagnosticsService(bool isCarDiagnosticsService) =>
      _$this._isCarDiagnosticsService = isCarDiagnosticsService;

  bool _isCarInssuranceService;
  bool get isCarInssuranceService => _$this._isCarInssuranceService;
  set isCarInssuranceService(bool isCarInssuranceService) =>
      _$this._isCarInssuranceService = isCarInssuranceService;

  bool _isCarRentalService;
  bool get isCarRentalService => _$this._isCarRentalService;
  set isCarRentalService(bool isCarRentalService) =>
      _$this._isCarRentalService = isCarRentalService;

  bool _isDetailingService;
  bool get isDetailingService => _$this._isDetailingService;
  set isDetailingService(bool isDetailingService) =>
      _$this._isDetailingService = isDetailingService;

  bool _isEngineDecarbonizationService;
  bool get isEngineDecarbonizationService =>
      _$this._isEngineDecarbonizationService;
  set isEngineDecarbonizationService(bool isEngineDecarbonizationService) =>
      _$this._isEngineDecarbonizationService = isEngineDecarbonizationService;

  bool _isParticleFilterCleaningService;
  bool get isParticleFilterCleaningService =>
      _$this._isParticleFilterCleaningService;
  set isParticleFilterCleaningService(bool isParticleFilterCleaningService) =>
      _$this._isParticleFilterCleaningService = isParticleFilterCleaningService;

  bool _isServiceAndRepairs;
  bool get isServiceAndRepairs => _$this._isServiceAndRepairs;
  set isServiceAndRepairs(bool isServiceAndRepairs) =>
      _$this._isServiceAndRepairs = isServiceAndRepairs;

  bool _isTowingService;
  bool get isTowingService => _$this._isTowingService;
  set isTowingService(bool isTowingService) =>
      _$this._isTowingService = isTowingService;

  bool _isTuningService;
  bool get isTuningService => _$this._isTuningService;
  set isTuningService(bool isTuningService) =>
      _$this._isTuningService = isTuningService;

  bool _isVulcanisingService;
  bool get isVulcanisingService => _$this._isVulcanisingService;
  set isVulcanisingService(bool isVulcanisingService) =>
      _$this._isVulcanisingService = isVulcanisingService;

  bool _isWrappingService;
  bool get isWrappingService => _$this._isWrappingService;
  set isWrappingService(bool isWrappingService) =>
      _$this._isWrappingService = isWrappingService;

  String _serviceDescription;
  String get serviceDescription => _$this._serviceDescription;
  set serviceDescription(String serviceDescription) =>
      _$this._serviceDescription = serviceDescription;

  String _mondayServiceHours;
  String get mondayServiceHours => _$this._mondayServiceHours;
  set mondayServiceHours(String mondayServiceHours) =>
      _$this._mondayServiceHours = mondayServiceHours;

  String _tuesdayServiceHours;
  String get tuesdayServiceHours => _$this._tuesdayServiceHours;
  set tuesdayServiceHours(String tuesdayServiceHours) =>
      _$this._tuesdayServiceHours = tuesdayServiceHours;

  String _wednesdayServiceHours;
  String get wednesdayServiceHours => _$this._wednesdayServiceHours;
  set wednesdayServiceHours(String wednesdayServiceHours) =>
      _$this._wednesdayServiceHours = wednesdayServiceHours;

  String _thursdayServiceHours;
  String get thursdayServiceHours => _$this._thursdayServiceHours;
  set thursdayServiceHours(String thursdayServiceHours) =>
      _$this._thursdayServiceHours = thursdayServiceHours;

  String _fridayServiceHours;
  String get fridayServiceHours => _$this._fridayServiceHours;
  set fridayServiceHours(String fridayServiceHours) =>
      _$this._fridayServiceHours = fridayServiceHours;

  String _saturdayServiceHours;
  String get saturdayServiceHours => _$this._saturdayServiceHours;
  set saturdayServiceHours(String saturdayServiceHours) =>
      _$this._saturdayServiceHours = saturdayServiceHours;

  String _sundayServiceHours;
  String get sundayServiceHours => _$this._sundayServiceHours;
  set sundayServiceHours(String sundayServiceHours) =>
      _$this._sundayServiceHours = sundayServiceHours;

  bool _isServiceAvailable;
  bool get isServiceAvailable => _$this._isServiceAvailable;
  set isServiceAvailable(bool isServiceAvailable) =>
      _$this._isServiceAvailable = isServiceAvailable;

  String _serviceCoverPhotoUrl;
  String get serviceCoverPhotoUrl => _$this._serviceCoverPhotoUrl;
  set serviceCoverPhotoUrl(String serviceCoverPhotoUrl) =>
      _$this._serviceCoverPhotoUrl = serviceCoverPhotoUrl;

  String _serviceProfilePhotoUrl;
  String get serviceProfilePhotoUrl => _$this._serviceProfilePhotoUrl;
  set serviceProfilePhotoUrl(String serviceProfilePhotoUrl) =>
      _$this._serviceProfilePhotoUrl = serviceProfilePhotoUrl;

  RegisterInfoBuilder();

  RegisterInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _username = _$v.username;
      _birthDate = _$v.birthDate;
      _location = _$v.location;
      _cars = _$v.cars;
      _photoUrl = _$v.photoUrl;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _serviceName = _$v.serviceName;
      _serviceLocation = _$v.serviceLocation;
      _servicePhone = _$v.servicePhone;
      _isAutoElectricianService = _$v.isAutoElectricianService;
      _isCarBodyRepairsService = _$v.isCarBodyRepairsService;
      _isCarDealershipService = _$v.isCarDealershipService;
      _isCarDiagnosticsService = _$v.isCarDiagnosticsService;
      _isCarInssuranceService = _$v.isCarInssuranceService;
      _isCarRentalService = _$v.isCarRentalService;
      _isDetailingService = _$v.isDetailingService;
      _isEngineDecarbonizationService = _$v.isEngineDecarbonizationService;
      _isParticleFilterCleaningService = _$v.isParticleFilterCleaningService;
      _isServiceAndRepairs = _$v.isServiceAndRepairs;
      _isTowingService = _$v.isTowingService;
      _isTuningService = _$v.isTuningService;
      _isVulcanisingService = _$v.isVulcanisingService;
      _isWrappingService = _$v.isWrappingService;
      _serviceDescription = _$v.serviceDescription;
      _mondayServiceHours = _$v.mondayServiceHours;
      _tuesdayServiceHours = _$v.tuesdayServiceHours;
      _wednesdayServiceHours = _$v.wednesdayServiceHours;
      _thursdayServiceHours = _$v.thursdayServiceHours;
      _fridayServiceHours = _$v.fridayServiceHours;
      _saturdayServiceHours = _$v.saturdayServiceHours;
      _sundayServiceHours = _$v.sundayServiceHours;
      _isServiceAvailable = _$v.isServiceAvailable;
      _serviceCoverPhotoUrl = _$v.serviceCoverPhotoUrl;
      _serviceProfilePhotoUrl = _$v.serviceProfilePhotoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegisterInfo;
  }

  @override
  void update(void Function(RegisterInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterInfo build() {
    final _$result = _$v ??
        new _$RegisterInfo._(
            email: email,
            password: password,
            username: username,
            birthDate: birthDate,
            location: location,
            cars: cars,
            photoUrl: photoUrl,
            firstName: firstName,
            lastName: lastName,
            serviceName: serviceName,
            serviceLocation: serviceLocation,
            servicePhone: servicePhone,
            isAutoElectricianService: isAutoElectricianService,
            isCarBodyRepairsService: isCarBodyRepairsService,
            isCarDealershipService: isCarDealershipService,
            isCarDiagnosticsService: isCarDiagnosticsService,
            isCarInssuranceService: isCarInssuranceService,
            isCarRentalService: isCarRentalService,
            isDetailingService: isDetailingService,
            isEngineDecarbonizationService: isEngineDecarbonizationService,
            isParticleFilterCleaningService: isParticleFilterCleaningService,
            isServiceAndRepairs: isServiceAndRepairs,
            isTowingService: isTowingService,
            isTuningService: isTuningService,
            isVulcanisingService: isVulcanisingService,
            isWrappingService: isWrappingService,
            serviceDescription: serviceDescription,
            mondayServiceHours: mondayServiceHours,
            tuesdayServiceHours: tuesdayServiceHours,
            wednesdayServiceHours: wednesdayServiceHours,
            thursdayServiceHours: thursdayServiceHours,
            fridayServiceHours: fridayServiceHours,
            saturdayServiceHours: saturdayServiceHours,
            sundayServiceHours: sundayServiceHours,
            isServiceAvailable: isServiceAvailable,
            serviceCoverPhotoUrl: serviceCoverPhotoUrl,
            serviceProfilePhotoUrl: serviceProfilePhotoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

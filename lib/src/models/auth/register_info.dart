part of auth_models;

abstract class RegisterInfo implements Built<RegisterInfo, RegisterInfoBuilder> {
  factory RegisterInfo([void Function(RegisterInfoBuilder b) updates]) = _$RegisterInfo;

  factory RegisterInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  RegisterInfo._();

  @nullable
  String get email;

  @nullable
  String get password;

  @nullable
  String get username;

  @nullable
  DateTime get birthDate;

  @nullable
  String get location;

  @nullable
  String get cars;

  @nullable
  String get photoUrl;

  @nullable
  String get firstName;

  @nullable
  String get lastName;

  @nullable
  String get serviceName;

  @nullable
  String get serviceLocation;

  @nullable
  String get servicePhone;

  @nullable
  bool get isAutoElectricianService;

  @nullable
  bool get isCarBodyRepairsService;

  @nullable
  bool get isCarDealershipService;

  @nullable
  bool get isCarDiagnosticsService;

  @nullable
  bool get isCarInssuranceService;

  @nullable
  bool get isCarRentalService;

  @nullable
  bool get isDetailingService;

  @nullable
  bool get isEngineDecarbonizationService;

  @nullable
  bool get isParticleFilterCleaningService;

  @nullable
  bool get isServiceAndRepairs;

  @nullable
  bool get isTowingService;

  @nullable
  bool get isTuningService;

  @nullable
  bool get isVulcanisingService;

  @nullable
  bool get isWrappingService;

  @nullable
  String get serviceDescription;

  @nullable
  String get mondayServiceHours;

  @nullable
  String get tuesdayServiceHours;

  @nullable
  String get wednesdayServiceHours;

  @nullable
  String get thursdayServiceHours;

  @nullable
  String get fridayServiceHours;

  @nullable
  String get saturdayServiceHours;

  @nullable
  String get sundayServiceHours;

  @nullable
  bool get isServiceAvailable;

  @nullable
  String get serviceCoverPhotoUrl;

  @nullable
  String get serviceProfilePhotoUrl;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RegisterInfo> get serializer => _$registerInfoSerializer;
}

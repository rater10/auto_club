import 'package:auto_club/src/models/auth/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'index.dart';

class AuthApi {
  const AuthApi({
    @required FirebaseAuth auth,
    @required FirebaseFirestore firestore,
  })  : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> initializeApp() async {
    final User user = _auth.currentUser;
    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot snapshot = await _firestore.doc('users/${result.user.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> register(
      {@required String email,
      @required String password,
      @required String username,
      @required DateTime birthDate,
      @required String location,
      @required String cars,
      @required String photoUrl,
      @required String firstName,
      @required String lastName,
      @required String serviceName,
      @required String serviceLocation,
      @required String servicePhone,
      @required bool isAutoElectricianService,
      @required bool isCarBodyRepairsService,
      @required bool isCarDealershipService,
      @required bool isCarDiagnosticsService,
      @required bool isCarInssuranceService,
      @required bool isCarRentalService,
      @required bool isDetailingService,
      @required bool isEngineDecarbonizationService,
      @required bool isParticleFilterCleaningService,
      @required bool isServiceAndRepairs,
      @required bool isTowingService,
      @required bool isTuningService,
      @required bool isVulcanisingService,
      @required bool isWrappingService,
      @required String serviceDescription,
      @required String mondayServiceHours,
      @required String tuesdayServiceHours,
      @required String wednesdayServiceHours,
      @required String thursdayServiceHours,
      @required String fridayServiceHours,
      @required String saturdayServiceHours,
      @required String sundayServiceHours,
      @required bool isServiceAvailable,
      @required String serviceCoverPhotoUrl,
      @required String serviceProfilePhotoUrl}) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = result.user.uid
        ..email = result.user.email
        ..username = username
        ..birthDate = birthDate
        ..location = location
        ..cars = cars
        ..photoUrl = photoUrl
        ..searchIndex = ListBuilder<String>(<String>[username].searchIndex)
        ..firstName = ''
        ..lastName = ''
        ..serviceName = ''
        ..serviceLocation = ''
        ..servicePhone = ''
        ..isAutoElectricianService = false
        ..isCarBodyRepairsService = false
        ..isCarDealershipService = false
        ..isCarDiagnosticsService = false
        ..isCarInssuranceService = false
        ..isCarRentalService = false
        ..isDetailingService = false
        ..isEngineDecarbonizationService = false
        ..isParticleFilterCleaningService = false
        ..isServiceAndRepairs = false
        ..isTowingService = false
        ..isTuningService = false
        ..isVulcanisingService = false
        ..isWrappingService = false
        ..serviceDescription = ''
        ..mondayServiceHours = ''
        ..tuesdayServiceHours = ''
        ..wednesdayServiceHours = ''
        ..thursdayServiceHours = ''
        ..fridayServiceHours = ''
        ..saturdayServiceHours = ''
        ..sundayServiceHours = ''
        ..isServiceAvailable = false
        ..serviceCoverPhotoUrl = ''
        ..serviceProfilePhotoUrl = '';
    });

    await _firestore.doc('users/${result.user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> updateProfilePhoto(String photoUrl) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'photoUrl': photoUrl,
      },
    );
  }

  Future<void> updateUsername(String username) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'username': username,
      },
    );
  }

  Future<void> updateLocation(String location) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'location': location,
      },
    );
  }

  Future<void> updateCars(String cars) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'cars': cars,
      },
    );
  }

  Future<void> updateServiceCoverPhoto(String coverPhotoUrl) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'serviceCoverPhotoUrl': coverPhotoUrl,
      },
    );
  }

  Future<void> updateServiceProfilePhoto(String profilePhotoUrl) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'serviceProfilePhotoUrl': profilePhotoUrl,
      },
    );
  }

  Future<void> updateFirstName(String firstName) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'firstName': firstName,
      },
    );
  }

  Future<void> updateLastName(String lastName) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'lastName': lastName,
      },
    );
  }

  Future<void> updateServiceName(String serviceName) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'serviceName': serviceName,
      },
    );
  }

  Future<void> updateServiceLocation(String serviceLocation) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'serviceLocation': serviceLocation,
      },
    );
  }

  Future<void> updateServicePhone(String servicePhone) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'servicePhone': servicePhone,
      },
    );
  }

  Future<void> updateIsAutoElectricianService(bool isAutoElectricianService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isAutoElectricianService': isAutoElectricianService,
      },
    );
  }

  Future<void> updateIsCarBodyRepairsService(bool isCarBodyRepairsService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isCarBodyRepairsService': isCarBodyRepairsService,
      },
    );
  }

  Future<void> updateIsCarDealershipService(bool isCarDealershipService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isCarDealershipService': isCarDealershipService,
      },
    );
  }

  Future<void> updateIsCarDiagnosticsService(bool isCarDiagnosticsService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isCarDiagnosticsService': isCarDiagnosticsService,
      },
    );
  }

  Future<void> updateIsCarInssuranceService(bool isCarInssuranceService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isCarInssuranceService': isCarInssuranceService,
      },
    );
  }

  Future<void> updateIsCarRentalService(bool isCarRentalService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isCarRentalService': isCarRentalService,
      },
    );
  }

  Future<void> updateIsDetailingService(bool isDetailingService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isDetailingService': isDetailingService,
      },
    );
  }

  Future<void> updateIsEngineDecarbonizationService(bool isEngineDecarbonizationService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isEngineDecarbonizationService': isEngineDecarbonizationService,
      },
    );
  }

  Future<void> updateIsParticleFilterCleaningService(bool isParticleFilterCleaningService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isParticleFilterCleaningService': isParticleFilterCleaningService,
      },
    );
  }

  Future<void> updateIsServiceAndRepairs(bool isServiceAndRepairs) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isServiceAndRepairs': isServiceAndRepairs,
      },
    );
  }

  Future<void> updateIsTowingService(bool isTowingService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isTowingService': isTowingService,
      },
    );
  }

  Future<void> updateIsTuningService(bool isTuningService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isTuningService': isTuningService,
      },
    );
  }

  Future<void> updateIsVulcanisingService(bool isVulcanisingService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isVulcanisingService': isVulcanisingService,
      },
    );
  }

  Future<void> updateIsWrappingService(bool isWrappingService) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isWrappingService': isWrappingService,
      },
    );
  }

  Future<void> updateServiceDescription(String serviceDescription) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'serviceDescription': serviceDescription,
      },
    );
  }

  Future<void> updateMondayServiceHours(String mondayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'mondayServiceHours': mondayServiceHours,
      },
    );
  }

  Future<void> updateTuesdayServiceHours(String tuesdayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'tuesdayServiceHours': tuesdayServiceHours,
      },
    );
  }

  Future<void> updateWednesdayServiceHours(String wednesdayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'wednesdayServiceHours': wednesdayServiceHours,
      },
    );
  }

  Future<void> updateThursdayServiceHours(String thursdayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'thursdayServiceHours': thursdayServiceHours,
      },
    );
  }

  Future<void> updateFridayServiceHours(String fridayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'fridayServiceHours': fridayServiceHours,
      },
    );
  }

  Future<void> updateSaturdayServiceHours(String saturdayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'saturdayServiceHours': saturdayServiceHours,
      },
    );
  }

  Future<void> updateSundayServiceHours(String sundayServiceHours) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'sundayServiceHours': sundayServiceHours,
      },
    );
  }

  Future<void> updateIsServiceAvailable(bool isServiceAvailable) async {
    final User user = _auth.currentUser;
    await _firestore.doc('users/${user.uid}').update(
      <String, dynamic>{
        'isServiceAvailable': isServiceAvailable,
      },
    );
  }

  Future<void> forgotPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<AppUser> getContact(String uid) async {
    final DocumentSnapshot snapshot = await _firestore.doc('users/$uid').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<List<AppUser>> searchUsers(String query) async {
    final QuerySnapshot snapshot = await _firestore
        .collection('users')
        .where('searchIndex', arrayContains: query)
        .get();

    return snapshot.docs
        .map((QueryDocumentSnapshot snapshot) => AppUser.fromJson(snapshot.data()))
        .toList();
  }

  Future<void> startFollowing({@required String uid, @required String followingUid}) async {
    final List<String> uids = <String>[followingUid];
    await _firestore
        .doc('users/$uid')
        .update(<String, dynamic>{'following': FieldValue.arrayUnion(uids)});
  }

  Future<void> stopFollowing({@required String uid, @required String followingUid}) async {
    final List<String> uids = <String>[followingUid];
    await _firestore
        .doc('users/$uid')
        .update(<String, dynamic>{'following': FieldValue.arrayRemove(uids)});
  }

  Future<AppUser> getUser() async {
    final User firebaseUser = _auth.currentUser;
    return _buildUser(firebaseUser);
  }

  Future<AppUser> _buildUser(User firebaseUser) async {
    if (firebaseUser == null) {
      return null;
    }
    final DocumentSnapshot snapshot = await _firestore.doc('users/${firebaseUser.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }
}

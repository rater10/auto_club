import 'dart:io';

import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class CarServiceProfilePage extends StatefulWidget {
  const CarServiceProfilePage({Key key}) : super(key: key);

  @override
  _CarServiceProfilePageState createState() => _CarServiceProfilePageState();
}

class _CarServiceProfilePageState extends State<CarServiceProfilePage> {
  String _coverImageUrl;
  String _profileImageUrl;

  void _uploadCoverImage(bool uploadFromCamera) async {
    final ImagePicker _imagePicker = ImagePicker();
    PickedFile image;

    if (uploadFromCamera) {
      image = await _imagePicker.getImage(source: ImageSource.camera);
    } else {
      image = await _imagePicker.getImage(source: ImageSource.gallery);
    }
    final File file = File(image.path);
    final Reference storageReference =
    FirebaseStorage.instance.ref().child('coverServicePictures/${path.basename(file.path)}');
    final UploadTask uploadTask = storageReference.putFile(file);
    await uploadTask.whenComplete(() async {
      final String downloadUrl = await storageReference.getDownloadURL();
      setState(() {
        _coverImageUrl = downloadUrl;
        StoreProvider.of<AppState>(context).dispatch(UpdateServiceCoverPhoto(_coverImageUrl));
      });
    });
  }

  void _uploadProfileImage(bool uploadFromCamera) async {
    final ImagePicker _imagePicker = ImagePicker();
    PickedFile image;

    if (uploadFromCamera) {
      image = await _imagePicker.getImage(source: ImageSource.camera);
    } else {
      image = await _imagePicker.getImage(source: ImageSource.gallery);
    }
    final File file = File(image.path);
    final Reference storageReference =
    FirebaseStorage.instance.ref().child('profileServicePictures/${path.basename(file.path)}');
    final UploadTask uploadTask = storageReference.putFile(file);
    await uploadTask.whenComplete(() async {
      final String downloadUrl = await storageReference.getDownloadURL();
      setState(() {
        _profileImageUrl = downloadUrl;
        StoreProvider.of<AppState>(context).dispatch(UpdateServiceProfilePhoto(_profileImageUrl));
      });
    });
  }

  void _showChangeServiceProfilePhotoDialog(BuildContext context) {
    final Dialog alert = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: 192,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 64, 8, 8),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Change service profile photo',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 32.0, right: 32.0),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            _uploadProfileImage(false);
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                          color: Colors.redAccent,
                          child: const Icon(
                            Icons.photo,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                        const Spacer(),
                        RaisedButton(
                          onPressed: () {
                            _uploadProfileImage(true);
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                          color: Colors.redAccent,
                          child: const Icon(
                            Icons.photo_camera_rounded,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
              top: -45,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 45,
                child: Icon(
                  Icons.build,
                  size: 64.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _showChangeServiceCoverPhotoDialog(BuildContext context) {
    final Dialog alert = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: 192,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 64, 8, 8),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Change service cover photo',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 32.0, right: 32.0),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            _uploadCoverImage(false);
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                          color: Colors.redAccent,
                          child: const Icon(
                            Icons.photo,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                        const Spacer(),
                        RaisedButton(
                          onPressed: () {
                            _uploadCoverImage(true);
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                          color: Colors.redAccent,
                          child: const Icon(
                            Icons.photo_camera_rounded,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
              top: -45,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 45,
                child: Icon(
                  Icons.picture_in_picture_alt_rounded,
                  size: 64.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser user) {
      return Scaffold(
        appBar: AppBar(
          title: Text(user.serviceName.isNotEmpty ? user.serviceName : 'Service unavailable'),
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.editServiceProfile);
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.black12,
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: _coverImageUrl != null
                          ? Image.network(
                        _coverImageUrl,
                        fit: BoxFit.cover,
                      )
                          : user.serviceCoverPhotoUrl.isNotEmpty
                          ? Image.network(
                        user.serviceCoverPhotoUrl,
                        fit: BoxFit.cover,
                      )
                          : const Icon(
                        Icons.picture_in_picture_alt_rounded,
                        color: Colors.blueGrey,
                      ),
                    ),
                    onPressed: () async {
                      _showChangeServiceCoverPhotoDialog(context);
                    },
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: ClipOval(
                        child: Container(
                          color: Colors.black12,
                          width: 96,
                          height: 96.0,
                          // decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: MaterialButton(
                              onPressed: () async {
                                _showChangeServiceProfilePhotoDialog(context);
                              },
                              child: _profileImageUrl != null
                                  ? Image.network(_profileImageUrl)
                                  : user.serviceProfilePhotoUrl.isNotEmpty
                                  ? Image.network(user.serviceProfilePhotoUrl)
                                  : const Icon(
                                Icons.build,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                          child: FlatButton(
                            child: Text(
                              user.serviceName,
                              style: const TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: FlatButton(
                                child: Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.redAccent,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                    ),
                                    Text(
                                      user.servicePhone,
                                      style: const TextStyle(
                                          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.redAccent),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.location_on,
                        color: Colors.redAccent,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                      ),
                      Text(
                        user.serviceLocation,
                        style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.description,
                        color: Colors.redAccent,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                      ),
                      Text(
                        user.serviceDescription,
                        style: const TextStyle(fontSize: 16.0, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),
                  padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                  child: const Text(
                    'Services Offered',
                    style: TextStyle(
                      // color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold, decoration: TextDecoration.underline
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (user.isAutoElectricianService)
                  FlatButton(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Auto Electrician',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isCarBodyRepairsService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Car Body Repairs',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isCarDealershipService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Car Dealership',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isCarDiagnosticsService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Car Diagnostics',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isCarInssuranceService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Car Insurance Service',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isCarRentalService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Car Rental',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isDetailingService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Detailing',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isEngineDecarbonizationService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Engine Decarbonization',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isParticleFilterCleaningService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Particle Filter Cleaning',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isServiceAndRepairs)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Service & Repairs',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isTowingService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Towing Service',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isTuningService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Tuning',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isVulcanisingService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Vulcanising Service',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                if (user.isWrappingService)
                  FlatButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.album,
                          color: Colors.black,
                          size: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Text(
                          'Wrapping',
                          style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        const Icon(
                          Icons.check_circle_sharp,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
                FlatButton(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Icon(
                        Icons.access_time_outlined,
                        color: Colors.redAccent,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                      ),
                      const Text(
                        'Work Program',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold,),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Monday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.mondayServiceHours,
                            style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Tuesday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.tuesdayServiceHours,
                          style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Wednesday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.wednesdayServiceHours,
                          style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Thursday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.thursdayServiceHours,
                          style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Friday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.fridayServiceHours,
                          style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Saturday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.saturdayServiceHours,
                          style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0, bottom: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text(
                        'Sunday',
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 128.0),
                        child: Text(
                          user.sundayServiceHours,
                          style: const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

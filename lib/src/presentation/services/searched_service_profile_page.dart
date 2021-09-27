import 'package:auto_club/src/actions/chats/create_chat.dart';
import 'package:auto_club/src/actions/chats/set_selected_chat.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchedServiceProfilePage extends StatefulWidget {
  const SearchedServiceProfilePage({Key key, this.carService}) : super(key: key);

  final Map<String, dynamic> carService;

  @override
  _SearchedServiceProfilePageState createState() => _SearchedServiceProfilePageState();
}

class _SearchedServiceProfilePageState extends State<SearchedServiceProfilePage> {
  String _chatId = '';

  Future<bool> _doesChatExists(String uid) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    User user = auth.currentUser;
    String currentUserUid = user.uid;
    QuerySnapshot snapshots = await firestore.collection('chats').get();
    List<DocumentSnapshot> documents = snapshots.docs;
    bool exists = false;
    if (documents.length > 0) {
      documents.forEach((DocumentSnapshot element) {
        if (element.data()['users'].toString().contains(currentUserUid) && element.data()['users'].toString().contains(uid)) {
          setState(() {
            _chatId = element.id;
          });
          exists = true;
        }

      });
    }
    return exists;
  }

  Future<bool> _isSameUser(String uid) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    User user = auth.currentUser;
    String currentUserUid = user.uid;
    bool isSame = false;
    if (currentUserUid == uid) {
      isSame = true;
    }
    return isSame;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.carService['serviceName']),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.black12,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: widget.carService['serviceCoverPhotoUrl'] != null
                      ? Image.network(
                    widget.carService['serviceCoverPhotoUrl'],
                    fit: BoxFit.cover,
                  )
                      : widget.carService['serviceCoverPhotoUrl'].isNotEmpty
                      ? Image.network(
                    widget.carService['serviceCoverPhotoUrl'],
                    fit: BoxFit.cover,
                  )
                      : const Icon(
                    Icons.picture_in_picture_alt_rounded,
                    color: Colors.blueGrey,
                  ),
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
                          child: widget.carService['serviceProfilePhotoUrl'] != null
                              ? Image.network(widget.carService['serviceProfilePhotoUrl'])
                              : widget.carService['serviceProfilePhotoUrl'].isNotEmpty
                              ? Image.network(widget.carService['serviceProfilePhotoUrl'])
                              : const Icon(
                            Icons.build,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    child: Center(
                      child: Text(
                        widget.carService['serviceName'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                    child: OutlineButton(
                      shape: const StadiumBorder(),
                      onPressed: () {
                        String phoneNumber = widget.carService['servicePhone'];
                        launch('tel://$phoneNumber');
                      },
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
                            widget.carService['servicePhone'],
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.redAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                    child: OutlineButton(
                      shape: const StadiumBorder(),
                      onPressed: () async {
                        if (!await _doesChatExists(widget.carService['uid']) && !await _isSameUser(widget.carService['uid'])) {
                          StoreProvider.of<AppState>(context).dispatch(CreateChat(widget.carService['uid']));
                          Navigator.pushNamed(context, AppRoutes.messages);
                        } else if (!await _isSameUser(widget.carService['uid'])) {
                          StoreProvider.of<AppState>(context).dispatch(SetSelectedChat(_chatId));
                          Navigator.pushNamed(context, AppRoutes.messages);
                        }
                      },
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Icon(
                            Icons.message,
                            color: Colors.redAccent,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                          ),
                          const Text(
                            'CONTACT US',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.redAccent),
                          ),
                        ],
                      ),
                    ),
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
                      widget.carService['serviceLocation'],
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
                      widget.carService['serviceDescription'],
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
              if (widget.carService['isAutoElectricianService'])
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
              if (widget.carService['isCarBodyRepairsService'])
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
              if (widget.carService['isCarDealershipService'])
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
              if (widget.carService['isCarDiagnosticsService'])
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
              if (widget.carService['isCarInssuranceService'])
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
              if (widget.carService['isCarRentalService'])
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
              if (widget.carService['isDetailingService'])
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
              if (widget.carService['isEngineDecarbonizationService'])
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
              if (widget.carService['isParticleFilterCleaningService'])
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
              if (widget.carService['isServiceAndRepairs'])
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
              if (widget.carService['isTowingService'])
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
              if (widget.carService['isTuningService'])
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
              if (widget.carService['isVulcanisingService'])
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
              if (widget.carService['isWrappingService'])
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
                        widget.carService['mondayServiceHours'],
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
                        widget.carService['tuesdayServiceHours'],
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
                        widget.carService['wednesdayServiceHours'],
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
                        widget.carService['thursdayServiceHours'],
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
                        widget.carService['fridayServiceHours'],
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
                        widget.carService['saturdayServiceHours'],
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
                        widget.carService['sundayServiceHours'],
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
  }
}

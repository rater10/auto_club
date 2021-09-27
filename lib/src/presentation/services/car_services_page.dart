import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/presentation/services/searched_service_profile_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CarServicesPage extends StatefulWidget {
  const CarServicesPage({Key key}) : super(key: key);

  @override
  _CarServicesPageState createState() => _CarServicesPageState();
}

class _CarServicesPageState extends State<CarServicesPage> {
  List<Map<String, dynamic>> _services = [];

  @override
  void initState() {
    super.initState();
    _getCarServices();
  }

  Future<void> _getCarServices() async {
    List<Map<String, dynamic>> _result = [];
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot snapshots = await firestore.collection('users').get();
    List<DocumentSnapshot> documents = snapshots.docs;
    if (documents.length > 0) {
      documents.forEach((element) {
        if (element.data()['isServiceAvailable'] == true) {
          final Map<String, dynamic> data = element.data();
          _result.add(data);
        }
      });
    }
    setState(() {
      _services = _result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _services.isEmpty
            ? const Center(
                child: Text(
                  'Car Services Unavailable',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: _services.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Container(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
                      child: Card(
                        // shadowColor: Colors.black,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  color: Colors.transparent,
                                  child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    child: AspectRatio(
                                      aspectRatio: 16 / 9,
                                      child: _services.elementAt(index)['serviceCoverPhotoUrl'] != null
                                          ? _services.elementAt(index)['serviceCoverPhotoUrl'].isNotEmpty
                                              ? ClipRRect(
                                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
                                                  child: Image.network(
                                                    _services.elementAt(index)['serviceCoverPhotoUrl'],
                                                    fit: BoxFit.cover,
                                                  ),
                                                )
                                              : const Icon(
                                                  Icons.picture_in_picture_alt_rounded,
                                                  color: Colors.blueGrey,
                                                )
                                          : const Icon(
                                              Icons.picture_in_picture_alt_rounded,
                                              color: Colors.blueGrey,
                                            ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 152),
                                      child: ClipOval(
                                        child: Container(
                                          color: Colors.black12,
                                          width: 128,
                                          height: 128.0,
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: MaterialButton(
                                              child: _services.elementAt(index)['serviceProfilePhotoUrl'] != null
                                                  ? Image.network(_services.elementAt(index)['serviceProfilePhotoUrl'])
                                                  : _services.elementAt(index)['serviceProfilePhotoUrl'].isNotEmpty
                                                      ? Image.network(
                                                          _services.elementAt(index)['serviceProfilePhotoUrl'])
                                                      : const Icon(
                                                          Icons.build,
                                                          color: Colors.blueGrey,
                                                        ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                _services.elementAt(index)['serviceName'],
                                style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            FlatButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.redAccent,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                  ),
                                  Text(
                                    _services.elementAt(index)['serviceLocation'],
                                    style:
                                        const TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SearchedServiceProfilePage(carService: _services.elementAt(index),)));
                    },
                  );
                }),
      ),
    );
  }
}

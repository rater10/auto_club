import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:auto_club/src/widgets/dynamicEditTextWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class OwnedCarsPage extends StatefulWidget {
  const OwnedCarsPage({Key key}) : super(key: key);

  @override
  _OwnedCarsPageState createState() => _OwnedCarsPageState();
}

class _OwnedCarsPageState extends State<OwnedCarsPage> {
  List<DynamicEditTextWidget> _dynamicEditTextWidgets = [];
  List<String> _cars = [];
  String _allCars = '';

  void _addDynamic() {
    if (_cars.isNotEmpty) {
      _dynamicEditTextWidgets = [];
      _cars = [];
    }
    setState(() {
      if (_dynamicEditTextWidgets.length >= 10) {
        return;
      }
      _dynamicEditTextWidgets.add(DynamicEditTextWidget());
    });
  }

  void submitData() {
    _cars = [];
    _dynamicEditTextWidgets.forEach((DynamicEditTextWidget widget) => _cars.add(widget.textController.text));
  }

  @override
  Widget build(BuildContext context) {
    final Widget dynamicTextField = Flexible(
      flex: 2,
      child: ListView.builder(
        itemCount: _dynamicEditTextWidgets.length,
        itemBuilder: (_, int index) => _dynamicEditTextWidgets[index],
      ),
    );
    final Widget result = Flexible(
        flex: 1,
        child: Card(
          child: ListView.builder(
              itemCount: _cars.length,
              itemBuilder: (_, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: Text('${index + 1} : ${_cars[index]}'),
                      ),
                      const Divider(),
                    ],
                  ),
                );
              }),
        ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage'),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                      child: const Text(
                        'What car(s) do you own?',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (_cars.isEmpty) dynamicTextField else result,
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          submitData();
                          _cars.forEach((String car) {
                            _allCars = _allCars + car + '/^/';
                          });
                          StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(cars: _allCars));
                          Navigator.pushNamed(context, AppRoutes.password);
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Divider(),
                    Text.rich(
                      TextSpan(text: 'Already have an account? ', children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                              }),
                      ]),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addDynamic();
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}

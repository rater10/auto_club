import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/chats/chats_page.dart';
import 'package:auto_club/src/presentation/services/car_services_page.dart';
import 'package:auto_club/src/presentation/feed/feed_page.dart';
import 'package:auto_club/src/presentation/profile/edit_profile_page.dart';
import 'package:auto_club/src/presentation/profile/profile_page.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FeedPart(),
    CarServicesPage(),
    ChatsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedTab == 1
            ? const Text('Car Services')
            : _selectedTab == 2
                ? const Text('Messages')
                : _selectedTab == 3
                    ? UserContainer(
                        builder: (BuildContext context, AppUser user) {
                          return Row(
                            children: <Widget>[
                              Text(user.username),
                            ],
                          );
                        },
                      )
                    : const Text(
                        'Auto Club',
                        style: TextStyle(fontFamily: 'Pacifico'),
                      ),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          if (_selectedTab == 0)
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.searchUser);
                  },
                ),
              ],
            ),
          if (_selectedTab == 1)
            IconButton(
                icon: const Icon(Icons.build),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.serviceProfile);
                }),
          if (_selectedTab == 2)
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.searchUser);
              },
            ),
          if (_selectedTab == 3)
            Row(
              children: <Widget>[
                IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.editProfile);
                    }),
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(const Logout());
                  },
                ),
              ],
            ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.redAccent,
            boxShadow: <BoxShadow>[BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                rippleColor: Colors.white,
                hoverColor: Colors.white,
                gap: 8,
                activeColor: Colors.red,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100],
                tabs: const <GButton>[
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.build,
                    text: 'Services',
                  ),
                  GButton(
                    icon: Icons.message,
                    text: 'Chat',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedTab,
                onTabChange: (int index) {
                  setState(() {
                    _selectedTab = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}

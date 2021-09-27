import 'package:auto_club/src/presentation/services/car_services_page.dart';
import 'package:auto_club/src/presentation/chats/chats_page.dart';
import 'package:auto_club/src/presentation/chats/messages_page.dart';
import 'package:auto_club/src/presentation/comments/comments_page.dart';
import 'package:auto_club/src/presentation/feed/post_details.dart';
import 'package:auto_club/src/presentation/home.dart';
import 'package:auto_club/src/presentation/login/reset_page.dart';
import 'package:auto_club/src/presentation/services/car_service_profile_page.dart';
import 'package:auto_club/src/presentation/services/edit_car_service_profile_page.dart';
import 'package:auto_club/src/presentation/profile/edit_profile_page.dart';
import 'package:auto_club/src/presentation/profile/profile_page.dart';
import 'package:auto_club/src/presentation/profile/searched_user_profile_page.dart';
import 'package:auto_club/src/presentation/register/birth_date_page.dart';
import 'package:auto_club/src/presentation/register/location_page.dart';
import 'package:auto_club/src/presentation/register/name_page.dart';
import 'package:auto_club/src/presentation/register/owned_cars_page.dart';
import 'package:auto_club/src/presentation/register/password_page.dart';
import 'package:auto_club/src/presentation/register/register_page.dart';
import 'package:auto_club/src/presentation/search/search_user_page.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String register = '/register';
  static const String name = '/name';
  static const String birthDate = '/birthDate';
  static const String location = '/location';
  static const String ownedCars = '/ownedCars';
  static const String password = 'password';
  static const String resetPassword = '/resetPassword';
  static const String userProfile = '/userProfile';
  static const String editProfile = '/editProfile';
  static const String searchUser = '/searchUser';
  static const String postDetails = 'postDetails';
  static const String comments = '/comments';
  static const String messages = '/messages';
  static const String chats = '/chats';
  static const String searchedUser = 'searchedUser';
  static const String serviceProfile = 'serviceProfile';
  static const String editServiceProfile = '/editServiceProfile';
  static const String services = '/services';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    register: (BuildContext context) => const RegisterPage(),
    name: (BuildContext context) => const NamePage(),
    password: (BuildContext context) => const PasswordPage(),
    resetPassword: (BuildContext context) => const ResetPasswordPage(),
    birthDate: (BuildContext context) => const BirthDatePage(),
    location: (BuildContext context) => const LocationPage(),
    ownedCars: (BuildContext context) => const OwnedCarsPage(),
    userProfile: (BuildContext context) => const ProfilePage(),
    editProfile: (BuildContext context) => const EditProfilePage(),
    searchUser: (BuildContext context) => const SearchUserPage(),
    postDetails: (BuildContext context) => const PostDetails(),
    comments: (BuildContext context) => const CommentsPage(),
    messages: (BuildContext context) => const MessagesPage(),
    chats: (BuildContext context) => const ChatsPage(),
    serviceProfile: (BuildContext context) => const CarServiceProfilePage(),
    editServiceProfile: (BuildContext context) => const EditCarServiceProfilePage(),
    services: (BuildContext context) => const CarServicesPage(),
  };
}

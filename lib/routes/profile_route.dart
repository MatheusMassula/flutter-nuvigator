import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/profile_screen.dart';

class ProfileRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) => ProfileScreen();

  @override
  String get path => 'profile';

  @override
  ScreenType get screenType => materialScreenType;
  
}
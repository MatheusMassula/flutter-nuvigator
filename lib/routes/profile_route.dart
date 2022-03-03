import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/profile_screen.dart';

class ProfileRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    print('Received parameters: ${settings.rawParameters}');
    return ProfileScreen(
      onClose: () => nuvigator.pop('Your name is: ${settings.rawParameters['name']}')
    );
  }

  @override
  String get path => 'profile';

  @override
  ScreenType get screenType => materialScreenType;
  
}
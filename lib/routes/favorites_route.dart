import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/favorites_screen.dart';

class FavoriteRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) => FavoritesScreen(
    onProducerClick: (parameters) => nuvigator.open('producer-details', parameters: parameters)
  );

  @override
  String get path => 'favorites';

  @override
  ScreenType get screenType => materialScreenType;
  
}
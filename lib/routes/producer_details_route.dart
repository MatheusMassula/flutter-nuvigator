import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/producer_details_screen.dart';

class ProducerDetailsRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) => ProducerDetailsScreen(
    producer: settings.rawParameters['producer'],
    onPackageDetailsClick: (parameters) => nuvigator.open('package-details', parameters: parameters)
  );

  @override
  String get path => 'producer-details';

  @override
  ScreenType get screenType => materialScreenType;
  
}
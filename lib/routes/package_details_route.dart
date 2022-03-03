import 'package:flutter/widgets.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/models/package_model.dart';
import 'package:proj/models/producer_model.dart';
import 'package:proj/screens/package_details_screen.dart';

class PackageDetailsRoute extends NuRoute<NuRouter, PackageDetailsRequestObject, String> {
  @override
  Widget build(BuildContext context, NuRouteSettings<PackageDetailsRequestObject> settings) => PackageDetailsScreen(
    package: settings.args.package,
    producer: settings.args.producer,
  );

  @override
  String get path => 'package-details';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  ParamsParser<PackageDetailsRequestObject> get paramsParser => PackageDetailsRequestObject.fromJson;
  
}

class PackageDetailsRequestObject {
  final Package package;
  final Producer producer;

  PackageDetailsRequestObject({
    @required this.package,
    @required this.producer
  });

  // PackageDetailsRequestObject.fromJson(Map<String, dynamic> json) :
  //   package = json['package'],
  //   producer = json['producer'];

  static PackageDetailsRequestObject fromJson(Map<String, dynamic> json) => PackageDetailsRequestObject(
    package: json['package'],
    producer: json['producer'],
  );

  Map<String, dynamic> toJson() => {
    'package': package,
    'producer': producer,
  };
}
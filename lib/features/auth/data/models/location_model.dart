import 'package:latlong2/latlong.dart';

class LocationModel {
  final String address;
  final LatLng coordinates;

  LocationModel({
    required this.address,
    required this.coordinates,
  });

  factory LocationModel.fromJson({required Map<String, dynamic> data}) {
    return LocationModel(
      address: data['address'],
      coordinates: data['coordinates'],
    );
  }
}

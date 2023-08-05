import 'package:llegar/features/auth/data/models/location_model.dart';

class UserModel {
  final String token;
  final String id;
  final String role;
  final String userName;
  final String email;
  final String fullName;
  final String city;
  final String phoneNumber;
  final String gender;
  final String birthDate;
  final String countryCode;
  final LocationModel location;

  UserModel({
    required this.token,
    required this.id,
    required this.role,
    required this.userName,
    required this.email,
    required this.fullName,
    required this.city,
    required this.phoneNumber,
    required this.gender,
    required this.birthDate,
    required this.countryCode,
    required this.location,
  });

  factory UserModel.fromJson({required Map<String, dynamic> data}) {
    return UserModel(
      token: data['token'],
      id: data['data']['user']['_id'],
      role: data['data']['user']['role'],
      userName: data['data']['user']['userName'],
      email: data['data']['user']['email'],
      fullName: data['data']['user']['fullName'],
      city: data['data']['user']['city'],
      phoneNumber: data['data']['user']['phoneNumber'],
      gender: data['data']['user']['gender'],
      birthDate: data['data']['user']['birthDate'],
      countryCode: data['data']['user']['countryCode'],
      location: LocationModel.fromJson(
        data: data['data']['user']['location'],
      ),
    );
  }
}

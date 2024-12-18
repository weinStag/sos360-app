import 'package:sos360_app/models/user_model.dart';

class CallModel {
  final UserModel user;
  final String service;
  final DateTime datetime;
  final String description;
  final String status;

  CallModel({
    required this.user,
    required this.service,
    required this.datetime,
    required this.description,
    required this.status,
  });
}
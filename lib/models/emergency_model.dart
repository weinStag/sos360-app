import 'package:sos360_app/constants/emergency_types.dart';

class EmergencyModel {
  final EmergencyType type;
  final String description;
  final String address;
  final DateTime cratedAt;
  final EmergencyStatus status;

  EmergencyModel({
    required this.type,
    required this.description,
    required this.address,
    required this.cratedAt,
    required this.status,
  });

  factory EmergencyModel.fromJson(Map<String, dynamic> json) {
    return EmergencyModel(
      type: json['type'],
      description: json['description'],
      address: json['address'],
      cratedAt: json['cratedAt'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'description': description,
      'address': address,
      'cratedAt': cratedAt,
      'status': status,
    };
  }

  EmergencyModel copyWith({
    EmergencyType? type,
    String? description,
    String? address,
    DateTime? cratedAt,
    EmergencyStatus? status,
  }) {
    return EmergencyModel(
      type: type ?? this.type,
      description: description ?? this.description,
      address: address ?? this.address,
      cratedAt: cratedAt ?? this.cratedAt,
      status: status ?? this.status,
    );
  }
}
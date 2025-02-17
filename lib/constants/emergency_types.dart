import 'package:flutter/material.dart';

enum EmergencyType {
  police(
    id: 1,
    name: 'Polícia',
    icon: "assets/emergencies/police.png",
    color: Colors.blue,
    services: [
      "Assalto", 
      "Roubo", 
      "Agressão", 
      "Sequestro", 
      "Golpe"
    ]
  ),
  firemen(
    id: 2,
    name: 'Bombeiros',
    icon: "assets/emergencies/firemen.png",
    color: Colors.red,
    services: [
      "Incêndio", 
      "Explosão", 
      "Vazamento de gás", 
      "Desabamento"
    ]
  ),
  ambulance(
    id: 3,
    name: 'SAMU',
    icon: "assets/emergencies/ambulance.png",
    color: Colors.red,
    services: [
      "Acidente", 
      "Atropelamento", 
      "Afogamento", 
      "Desmaio", 
      "Convulsão"
    ]
  );

  final int id;
  final String name;
  final String icon;
  final Color color;
  final List<String> services;

  const EmergencyType({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    required this.services
  });

  static EmergencyType fromId(int id) {
    return EmergencyType.values.firstWhere((element) => element.id == id);
  }

  List<String> getServices() {
    return services;
  }

  bool hasService(String service) {
    return services.contains(service);
  }
}

enum EmergencyStatus {
  created,
  active,
  finished
}
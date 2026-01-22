import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String email;
  final String name;
  final String rollNumber;
  final String hostel;
  final String roomNumber;
  final DateTime createdAt;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.rollNumber,
    required this.hostel,
    required this.roomNumber,
    required this.createdAt,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? 'User',
      rollNumber: map['rollNumber'] ?? 'Not Set',
      hostel: map['hostel'] ?? 'Not Set',
      roomNumber: map['roomNumber'] ?? 'Not Set',
      createdAt: map['createdAt'] is Timestamp 
          ? (map['createdAt'] as Timestamp).toDate() 
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'rollNumber': rollNumber,
      'hostel': hostel,
      'roomNumber': roomNumber,
      'createdAt': createdAt,
    };
  }
}

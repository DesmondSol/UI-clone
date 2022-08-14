// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class sign_up {
  final String firstName;
  final String lastName;
  final String user_name;
  final String phone_number;
  final String email;
  final String password;
  sign_up({
    required this.firstName,
    required this.lastName,
    required this.user_name,
    required this.phone_number,
    required this.email,
    required this.password,
  });

  sign_up copyWith({
    String? firstName,
    String? lastName,
    String? user_name,
    String? phone_number,
    String? email,
    String? password,
  }) {
    return sign_up(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      user_name: user_name ?? this.user_name,
      phone_number: phone_number ?? this.phone_number,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'user_name': user_name,
      'phone_number': phone_number,
      'email': email,
      'password': password,
    };
  }

  factory sign_up.fromMap(Map<String, dynamic> map) {
    return sign_up(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      user_name: map['user_name'] as String,
      phone_number: map['phone_number'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory sign_up.fromJson(String source) =>
      sign_up.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'sign_up(firstName: $firstName, lastName: $lastName, user_name: $user_name, phone_number: $phone_number, email: $email, password: $password)';
  }

  @override
  bool operator ==(covariant sign_up other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName &&
        other.lastName == lastName &&
        other.user_name == user_name &&
        other.phone_number == phone_number &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        user_name.hashCode ^
        phone_number.hashCode ^
        email.hashCode ^
        password.hashCode;
  }
}

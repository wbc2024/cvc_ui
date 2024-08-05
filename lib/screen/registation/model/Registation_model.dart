// To parse this JSON data, do
//
//     final userRegistationInfo = userRegistationInfoFromMap(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

UserRegistationInfo userRegistationInfoFromMap(String str) => UserRegistationInfo.fromMap(json.decode(str));

String userRegistationInfoToMap(UserRegistationInfo data) => json.encode(data.toMap());

class UserRegistationInfo {
    UserRegistationInfo({
        required this.name,
        required this.email,
        required this.mobile,
        required this.password,
    });

    String name;
    String email;
    String mobile;
    String password;

    factory UserRegistationInfo.fromMap(Map<String, dynamic> json) => UserRegistationInfo(
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "mobile": mobile,
        "password": password,
    };
}


class UserModel {
  String fullName;
  String username;
  String password;
  String location;
  String email;
  String phoneNumber;

  UserModel({
    required this.fullName,
    required this.username,
    required this.password,
    required this.location,
    required this.email,
    required this.phoneNumber,
  });

  // Method to convert data to a map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'username': username,
      'location': location,
      'email': email,
      'phoneNumber': phoneNumber,
    };
  }
}

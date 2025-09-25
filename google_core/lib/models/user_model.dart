class UserModel {
  final String email;
  final String name;

  UserModel({
    required this.email,
    required this.name,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserModel && other.email == email && other.name == name;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode;

  @override
  String toString() => 'UserModel(email: $email, name: $name)';
}

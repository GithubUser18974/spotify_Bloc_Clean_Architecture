class UserEntity {
  String? userId;
  String? fullName;
  String? email;
  UserEntity(String id, String name, String email) {
    this.email = email;
    this.fullName = name;
    this.userId = id;
  }
}

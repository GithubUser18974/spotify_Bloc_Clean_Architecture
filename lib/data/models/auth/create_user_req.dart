class CreateUserRequest {
  final String FullName;
  final String email;
  final String password;
  CreateUserRequest(this.email, this.password, {required this.FullName});
}

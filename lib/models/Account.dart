class Account {
  String email;
  String password;

  DateTime createdTime;

  Account({this.email, this.password, this.createdTime});

  @override
  String toString() {
    return "Email: $email Password: $password\n";
  }
}

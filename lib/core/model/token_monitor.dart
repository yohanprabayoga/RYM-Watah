class User {
  late String _userId;
  late String _email;
  late String _username;
  late String _role;
  late String _password;

  constructorUser({
    String? userId,
    String? email,
    String? username,
    String? role,
    String? password,
  }) {
    _userId = userId!;
    _email = email!;
    _username = username!;
    _role = role!;
    _password = password!;
  }

  String get userId => _userId;
  set userId(String userId) => _userId = userId;


  String get email => _email;
  set email(String email) => _email = email;
  String get username => _username;
  set username(String username) => _username = username;
  String get role => _role;
  set role(String role) => _role = role;
  String get password => _password;
  set password(String password) => _password = password;

  User.fromJson(Map<dynamic, dynamic> json) {
    _userId = json['gpr_usr_id'] ?? '';

    _email = json['gpr_usr_email '] ?? '';
    _username = json['gpr_usr_name'] ?? '';

    _role = json['gpr_role_name'] ?? '';
    _password = json['gpr_company_name'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = _userId;

    return data;
  }
}

class CustomerModel {
  String email;
  String name;
  String lastName;
  String password;

  CustomerModel({this.email, this.name,this.lastName, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map.addAll({
      'email': email,
      'name': name,
      'lastname': lastName,
      'password': password,
    });
    return map;
  }
}

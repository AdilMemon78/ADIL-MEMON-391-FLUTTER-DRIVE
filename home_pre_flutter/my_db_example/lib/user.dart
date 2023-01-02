class user {
  int? id;
  String? name;
  String? email;
  String? contact;

  userMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name ?? null;
    mapping['email'] = email ?? null;
    mapping['contact'] = contact ?? null;

    return mapping;
  }
}

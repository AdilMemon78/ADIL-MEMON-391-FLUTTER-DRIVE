class Hotel {
  int? id;
  String? name;
  String? contact;

  HotelMap() {
    var mapping = Map<String, dynamic>();

    mapping['name'] = name!;
    mapping['contact'] = contact!;

    return mapping;
  }
}

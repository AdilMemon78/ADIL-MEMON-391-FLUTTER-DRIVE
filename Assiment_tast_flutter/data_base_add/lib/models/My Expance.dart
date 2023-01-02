class MyExpance {
  int? id;
  String? month;
  String? title;
  int? amount;
  int? create_at;
  MyExpanceMap() {
    var Mapping = Map<String, dynamic>();
    Mapping['id'] = id ?? null;
    Mapping['Mobth'] = month!;
    Mapping['Mobth'] = title!;
    Mapping['Amount'] = amount ?? null;
    Mapping['Create_At'] = create_at ?? null;

    return Mapping;
  }
}

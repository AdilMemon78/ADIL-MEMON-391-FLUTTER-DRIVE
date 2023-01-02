class Catalogmodel {
  static List<Item> Items = [
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th genration",
        price: 999,
        //  color: "#33503",
        image:
            "https://ezone-electronics.online/wp-content/uploads/2020/12/71MHTD3uL4L._SL1500_.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  // final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      //required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        //  color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        // "color": color,
        "image": image,
      };
}

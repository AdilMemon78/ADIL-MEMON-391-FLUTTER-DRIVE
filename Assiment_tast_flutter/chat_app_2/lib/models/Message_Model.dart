// class MessageModel {
//   String? sender;
//   String? text;
//   String? seen;
//   String? createdon;

//   MessageModel({this.sender, this.text, this.seen, this.createdon});
//   MessageModel.formMap(Map<String, dynamic> map) {
//     sender = map["sender"];
//     text = map["text"];
//     seen = map["seen"];
//     createdon = map["createdon"].toDate();
//   }
//   Map<String, dynamic> toMap() {
//     return {
//       "sender": sender,
//       "text": text,
//       "seen": seen,
//       "createdon": createdon
//     };
//   }
// }
class MessageModel {
  String? messageid;
  String? sender;
  String? text;
  bool? seen;
  DateTime? createdon;

  MessageModel(
      {this.messageid, this.sender, this.text, this.seen, this.createdon});

  MessageModel.fromMap(Map<String, dynamic> map) {
    messageid = map["messageid"];
    sender = map["sender"];
    text = map["text"];
    seen = map["seen"];
    createdon = map["createdon"].toDate();
  }

  Map<String, dynamic> toMap() {
    return {
      "messageid": messageid,
      "sender": sender,
      "text": text,
      "seen": seen,
      "createdon": createdon
    };
  }
}

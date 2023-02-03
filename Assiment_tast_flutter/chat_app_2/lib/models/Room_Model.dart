// class chatRoomModel {
//   String? chatroomid;
//   List<String>? participates;

//   chatRoomModel({this.chatroomid, this.participates});
//   chatRoomModel.formMap(Map<String, dynamic> map) {
//     chatroomid = map["chatroomid"];
//     participates = map["participates"];
//   }
//   Map<String, dynamic> toMap() {
//     return {"chatroomid": chatroomid, "participates": participates};
//   }
// }
class ChatRoomModel {
  String? chatroomid;
  Map<String, dynamic>? participants;
  String? lastMessage;

  ChatRoomModel({this.chatroomid, this.participants, this.lastMessage});

  ChatRoomModel.fromMap(Map<String, dynamic> map) {
    chatroomid = map["chatroomid"];
    participants = map["participants"];
    lastMessage = map["lastmessage"];
  }

  Map<String, dynamic> toMap() {
    return {
      "chatroomid": chatroomid,
      "participants": participants,
      "lastmessage": lastMessage
    };
  }
}

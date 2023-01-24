import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  // refrence for our collection
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");
  final CollectionReference groupCollection =
      FirebaseFirestore.instance.collection("groups");

  // updating  the userdata
  Future savinguserdata(String fullname, String email) async {
    return await userCollection.doc(uid).set({
      "fullName": fullname,
      "email": email,
      "groups": [],
      "profilepic": "",
      "uid": uid,
    });
  }

  // getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }

  // get user groups
  getUserGroups() async {
    return userCollection.doc(uid).snapshots();
  }

//
  // creating a groups
  Future createGroup(String userName, String id, String groupName) async {
    DocumentReference groupdocumentReference = await groupCollection.add({
      "group name": groupName,
      "group icon": "",
      "admin": "${id}_$userName",
      "member": [],
      "groupId": "",
      "recentmessage": "",
      "recentmessageMember": "",
    });

    // update the member

    await groupdocumentReference.update({
      "member": FieldValue.arrayUnion(["${uid}_$userName"]),
      "groupId": groupdocumentReference.id,
    });
    DocumentReference userDocumentRefrence = userCollection.doc(uid);
    return await userDocumentRefrence.update({
      "groups":
          FieldValue.arrayUnion(["${groupdocumentReference.id}_$groupName"])
    });
  }

  // gettting the chates
  getChats(String groupId) async {
    return groupCollection
        .doc(groupId)
        .collection("message")
        .orderBy("time")
        .snapshots();
  }

  Future getGroupAdmin(String groupId) async {
    DocumentReference d = groupCollection.doc(groupId);
    DocumentSnapshot documentSnapshot = await d.get();
    return documentSnapshot['admin'];
  }

  //get group member

  getMember() async {
    getGroupMembers(groupId) async {
      return groupCollection.doc(groupId).snapshots();
    }

    //search
    searchByName(String groupName) {
      // var groupCollection;
      return groupCollection.where("groupName", isEqualTo: groupName).get();
    }

    // finction--->bool
    Future<bool> isUserJoined(
        String groupName, String groupId, String userName) async {
      DocumentReference userDocumentRefrence = userCollection.doc(uid);
      DocumentSnapshot documentSnapshot = await userDocumentRefrence.get();

      List<dynamic> group = await documentSnapshot['groups'];
      if (group.contains("${groupId}}_$groupName")) {
        return true;
      } else {
        return false;
      }
    }

    // tolling the group join/exit

    Future toggleGroupJoin(
        String groupId, String userName, String groupName) async {
      // doc refrence
      DocumentReference userDocumentRefrence = userCollection.doc(uid);
      DocumentReference groupdocumentReference = groupCollection.doc(groupId);

      DocumentSnapshot documentSnapshot = await userDocumentRefrence.get();
      List<dynamic> groups = await documentSnapshot['groups'];

      if (groups.contains("${groupId}_$groupName")) {
        await userDocumentRefrence.update({
          "groups": FieldValue.arrayRemove(["${groupId}_groupName"])
        });
        await groupdocumentReference.update({
          "member": FieldValue.arrayRemove(["${uid}_$groupName"])
        });
      } else {
        await userDocumentRefrence.update({
          "groups": FieldValue.arrayRemove(["${groupId}_$groupName"])
        });
        await groupdocumentReference.update({
          "member": FieldValue.arrayRemove(["${uid}_$groupName"])
        });
      }
    }

    // send message
    sendMessage(String groupId, Map<String, dynamic> chatmessagedata) async {
      groupCollection.doc(groupId).collection("message").add(chatmessagedata);
      groupCollection.doc(groupId).update({
        "recentmessage": chatmessagedata['message'],
        "recentmessageSender": chatmessagedata['sender'],
        "recentmessageTime": chatmessagedata['time'].toString(),
      });
    }
  }

  // pata nai

  getGroupMembers(String groupId) {}

  toggleGroupJoin(String groupId, String name, String groupName) {}

  searchByName(String text) {}

  isUserJoined(String groupname, String groupId, String userName) {}

  void sendMessage(String groupId, Map<String, dynamic> chatMessageMap) {}

  updateUserData(String fullname, String email) {}
}

  


//   gettingUserData(String email) {}

//   getUserGroups() {}

//   createGroup(String userName, String uid, String groupName) {}

//   void sendMessage(String groupId, Map<String, dynamic> chatMessageMap) {}

//   getGroupAdmin(String groupId) {}

//   getChats(String groupId) {}

//   getGroupMembers(String groupId) {}

//   toggleGroupJoin(String groupId, String name, String groupName) {}

//   searchByName(String text) {}

//   isUserJoined(String groupname, String groupId, String userName) {}
// }

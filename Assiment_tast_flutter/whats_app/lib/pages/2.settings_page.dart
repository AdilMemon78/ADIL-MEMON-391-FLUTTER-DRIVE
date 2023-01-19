import 'package:flutter/material.dart';

class setting_page extends StatefulWidget {
  const setting_page({super.key});

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e55),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Settings",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/1212.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adil",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hey there, i am using whatsapp.",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Privacy, security. change number",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Theme, wallpapers, chat history",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Message, group & call tones",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  "Storage and Data",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Network usege, auto-download",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Help centre, contact us, privacy policy",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt),
                ),
                title: Text(
                  "Invite a friend",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    children: [
                      Text(
                        "From",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

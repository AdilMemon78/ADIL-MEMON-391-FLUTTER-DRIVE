// import 'package:drawer/Home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class MyDashbord extends StatefulWidget {
//   const MyDashbord({super.key});

//   @override
//   State<MyDashbord> createState() => _MyDashbordState();
// }

// enum DrawerSections { dashboard, contact, profile }

// var mainContainer;
// var currentPage = DrawerSections.dashboard;

// class _MyDashbordState extends State<MyDashbord> {
//   @override
//   Widget build(BuildContext context) {
//     setPages();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Navigation Drawer"),
//       ),
//       body: mainContainer,
//       drawer: Drawer(
//         backgroundColor: Color.fromARGB(255, 243, 173, 173),
//         child: SingleChildScrollView(
//             child: Container(
//           child: Column(
//             children: [MyDrawerList()],
//           ),
//         )),
//       ),
//     );
//   }

//   Widget MyDrawerList() {
//     return Container(
//       padding: EdgeInsets.only(top: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           menuItem(1, "Dashboard", Icons.dashboard,
//               currentPage == DrawerSections.dashboard ? true : false),
//           menuItem(2, "Contack", Icons.call,
//               currentPage == DrawerSections.contact ? true : false),
//           Divider(),
//           menuItem(3, "Profile", Icons.person,
//               currentPage == DrawerSections.profile ? true : false),
//         ],
//       ),
//     );
//   }

//   Widget menuItem(int id, String title, IconData icon, bool selected) {
//     return Material(
//       color: selected ? Colors.white : Colors.transparent,
//       child: InkWell(
//         onTap: () {
//           Navigator.pop(context);
//           setState(() {
//             if (id == 1) {
//               currentPage = DrawerSections.dashboard;
//             } else if (id == 2) {
//               currentPage = DrawerSections.contact;
//             } else if (id == 2) {
//               currentPage = DrawerSections.profile;
//             }
//           });
//         },
//         child: Padding(
//           padding: EdgeInsets.all(18),
//           child: Row(children: [
//             Icon(
//               icon,
//               size: 20,
//               color: Colors.blueAccent,
//             ),
//             Text(
//               title,
//               style: TextStyle(color: Colors.black),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// void setPages() {
//   if (currentPage == DrawerSections.dashboard) {
//     mainContainer = Home_page();
//   } else if (currentPage == DrawerSections.contact) {
//     //contact page
//   } else if (currentPage == DrawerSections.profile) {}
// }
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      "https://www.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",),fit: BoxFit.cover)),
                accountName: Text("AdilMemon"),
                accountEmail: Text("Memon@gmail.com")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                // navigate to the home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                // navigate to the settings screen
              },
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to my app!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

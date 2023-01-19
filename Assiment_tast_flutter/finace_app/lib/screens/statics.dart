import 'package:finace_app/Data/List_data.dart';
import 'package:finace_app/widgets/chat.dart';
import 'package:finace_app/Data/top.dart';
import 'package:flutter/material.dart';

class statices extends StatefulWidget {
  const statices({super.key});

  @override
  State<statices> createState() => _staticesState();
}

class _staticesState extends State<statices> {
  List day = ['day', 'week', 'month', 'year'];
  int index_colour = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Statics",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(4, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              index_colour = index;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index_colour == index
                                    ? Color.fromARGB(255, 47, 125, 121)
                                    : Color.fromARGB(255, 35, 31, 35)),
                            alignment: Alignment.center,
                            child: Text(
                              day[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: index_colour == index
                                      ? Colors.white
                                      : Color.fromARGB(255, 98, 96, 96)),
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Expanse",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_downward_sharp,
                                color: Colors.grey,
                              )
                            ]),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // widgets
                chart(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top spending",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.swap_vert,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                leading: Image.asset(
                  "images /${geter_top()[index].image!},",
                  height: 40,
                ),
                title: Text(
                  geter_top()[index].name!,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  geter_top()[index].time!,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  geter_top()[index].fee!,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              );
            },
            childCount: geter_top().length,
          ))
        ],
      )),
    );
  }
}

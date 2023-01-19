import 'package:flutter/material.dart';

class Add_screen extends StatefulWidget {
  const Add_screen({super.key});

  @override
  State<Add_screen> createState() => _Add_screenState();
}

class _Add_screenState extends State<Add_screen> {
  String? selecteditem;
  String? selecteditemi;
  FocusNode ex = FocusNode();
  final TextEditingController explain_c = TextEditingController();
  FocusNode amount = FocusNode();
  final TextEditingController amount_c = TextEditingController();
  final List<String> _item = [
    'food',
    'Trasfer',
    'transformation',
    'Education',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    amount.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          backgound_container(context),
          Positioned(
            top: 120,
            child: main_container(),
          ),
        ],
      )),
    );
  }

  Container main_container() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      height: 550,
      width: 340,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          name(),
          SizedBox(
            height: 30,
          ),
          explain(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              keyboardType: TextInputType.number,
              focusNode: amount,
              controller: amount_c,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  labelText: 'amount',
                  labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xffc5c5c5))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xff368983)))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Color(0xffc5c5c5))),
              child: DropdownButton<String>(
                  value: selecteditemi,
                  items: _item
                      .map((e) => DropdownMenuItem(
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    child: Image.asset('images/2.jpg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    e,
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            value: e,
                          ))
                      .toList(),
                  // selectedItemBuilder: (BuildContext context){
                  //   _item.map((e) => Row(
                  //         children: [
                  //           Container(
                  //             width: 42,
                  //             child: Image.asset('images${e}.png'),
                  //           ),
                  //           SizedBox(
                  //             width: 5,
                  //           ),
                  //           Text(e)
                  //         ],
                  //       ));
                  // },
                  hint: Text(
                    'How',
                    style: TextStyle(color: Colors.grey),
                  ),
                  dropdownColor: Colors.white,
                  isExpanded: true,
                  onChanged: ((value) {
                    setState(() {
                      selecteditemi = value!;
                    });
                    value:
                    selecteditemi;
                  })),
            ),
          ),
        ],
      ),
    );
  }

  Padding explain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        focusNode: ex,
        controller: explain_c,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            labelText: 'explain',
            labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 2, color: Color(0xffc5c5c5))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 2, color: Color(0xff368983)))),
      ),
    );
  }

  Padding name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: Color(0xffc5c5c5))),
        child: DropdownButton<String>(
            value: selecteditem,
            items: _item
                .map((e) => DropdownMenuItem(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              child: Image.asset('images/2.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              e,
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      value: e,
                    ))
                .toList(),
            // selectedItemBuilder: (BuildContext context){
            //   _item.map((e) => Row(
            //         children: [
            //           Container(
            //             width: 42,
            //             child: Image.asset('images${e}.png'),
            //           ),
            //           SizedBox(
            //             width: 5,
            //           ),
            //           Text(e)
            //         ],
            //       ));
            // },
            hint: Text(
              'Name',
              style: TextStyle(color: Colors.grey),
            ),
            dropdownColor: Colors.white,
            isExpanded: true,
            onChanged: ((value) {
              setState(() {
                selecteditem = value!;
              });
            })),
      ),
    );
  }

  Column backgound_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
              color: Color(0xff368983),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Adding",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

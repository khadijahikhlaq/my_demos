import 'package:flutter/material.dart';

void main() {
  runApp(MYApp());
}

class MYApp extends StatefulWidget {
  const MYApp({Key? key}) : super(key: key);

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  @override
  int selectedItemIndex = 0;
  //List<String> item = [" My Challenges", "Current Challenge", "Past Challenge"];
  //String? dropdownValue = 'My Challenges';
  List<String> list = <String>[
    " My Challenges",
    "Current Challenge",
    "Past Challenge"
  ];
  String? dropdownValue = null;

  void dropdownCallback (String? selectedValue) {
    setState(() {
      dropdownValue = selectedValue!;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "My Challenges",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
         DropdownButton(items: const[
           DropdownMenuItem(child: Text("my Challenges"), value: "challenge",),
           DropdownMenuItem(child: Text("present Challenges"), value: "challenge",),
           DropdownMenuItem(child: Text("past  Challenges"), value: "challenge",),

         ], onChanged: dropdownCallback,
         value: dropdownValue,),



          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down_sharp),
            padding: EdgeInsets.only(right: 25),
            iconSize: 40.5,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.doorbell)),
          IconButton(onPressed: () {}, icon: Icon(Icons.email)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Material(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.wine_bar), label: "CHALLENGE"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "BOARD"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "ME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "MARKET"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "MORE"),
        ],
        currentIndex: selectedItemIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        iconSize: 35,
        onTap: (index) {
          setState(() {
            selectedItemIndex = index;
          });
        },
      ),
    ));
  }
}

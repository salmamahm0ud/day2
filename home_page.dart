import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? increament=0;
  List? index = [1, 2, 3, 4, 5, 6, 7, 8];
  List? rooms = [
    {
      'type': 'Double Room',
      'description': 'A room for two',
      'image': 'assets/images/1.jpg'
    },
    {
      'type': 'Single Room',
      'description': 'A room for one',
      'image': 'assets/images/2.jpg'
    },
    {
      'type': 'Family Room',
      'description': 'A room for a family',
      'image': 'assets/images/3.jpg'
    },
    {
      'type': 'King Room',
      'description': 'A room with king sized ',
      'image': 'assets/images/4.jpg'
    },
    {
      'type': 'Double Room',
      'description': 'A room for two',
      'image': 'assets/images/1.jpg'
    },
    {
      'type': 'Single Room',
      'description': 'A room for one',
      'image': 'assets/images/2.jpg'
    },
    {
      'type': 'Family Room',
      'description': 'A room for a family',
      'image': 'assets/images/3.jpg'
    },
    {
      'type': 'King Room',
      'description': 'A room with king sized ',
      'image': 'assets/images/4.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rooms List'),
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 15),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: Colors.grey,
                        )
                      ],
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    subtitle: Text('${rooms![index![0+increament!]]['description']}'),
                    leading: Image.asset(
                      '${rooms![index![0+increament!]]['image']}',
                      height: 150,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_up),
                    title: Text('${rooms![index![0+increament!]]['type']}'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 15),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: Colors.grey,
                        )
                      ],
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    subtitle: Text('${rooms![index![1+increament!]]['description']}'),
                    leading: Image.asset(
                      '${rooms![index![1+increament!]]['image']}',
                      height: 150,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_up),
                    title: Text('${rooms![index![1+increament!]]['type']}'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: Colors.grey,
                        )
                      ],
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    subtitle: Text('${rooms![index![2+increament!]]['description']}'),
                    leading: Image.asset(
                      '${rooms![index![2+increament!]]['image']}',
                      height: 150,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_up),
                    title: Text('${rooms![index![2+increament!]]['type']}'),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {increament=increament!+1;});
                  },
                  child: Text('Next'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                )
              ],
            ),
          ),
        ));
  }
}

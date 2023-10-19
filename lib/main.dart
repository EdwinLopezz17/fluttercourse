import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home:MyHomePageState(),
    );
  }
}

class MyHomePageState extends StatefulWidget {

  @override
  State<MyHomePageState> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageState> {

  List<Person> _persons = [
    Person("Jose1", "Ramirez1", "+51 9978548561"),
    Person("SJose2", "Ramirez2", "+51 9978548562"),
    Person("XJose3", "Ramirez3", "+51 9978548563"),
    Person("ZJose4", "Ramirez4", "+51 9978548564"),
  ];

  @override
  void initState(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lists"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {

              },
            ),
          ],
        ),
      body: ListView.builder(
        itemCount: _persons.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              deletePerson(context, _persons[index]);
            },
            title: Text(_persons[index].name+" "+_persons[index].lastName),
            subtitle: Text(_persons[index].phone),
            leading: CircleAvatar(
              child: Text(_persons[index].name.substring(0,1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      )
    );
  }

  deletePerson(context,Person person) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Delete contact"),
        content: Text("Are you sure you want to delete this contact " + person.name + "?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),

          TextButton(
            onPressed: () {
              this._persons.remove(person);
              Navigator.pop(context);
              setState(() {

              });
            },
            child: Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }


}

class Person{
  late String name;
  late String lastName;
  late String phone;

  Person(name, lastName, phone){
    this.name = name;
    this.lastName = lastName;
    this.phone = phone;
  }
}

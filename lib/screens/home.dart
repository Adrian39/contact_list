import 'package:contact_list/models/contact.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  List<Contact> contactList =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    contactList = data['contact_list'];
    print('Here should be contacts $contactList $data');
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index){
        return Container(
          height: 100,
          child: Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/details', arguments: {
                  'contact': contactList[index]
                });
              },
              title: Text(
                contactList[index].name,
                style: TextStyle(
                  color: Colors.purple[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                child: Text(
                  contactList[index].company.name,
                ),
              ),
            ),
          ),
        );
        },
      ),
    );
  }
}

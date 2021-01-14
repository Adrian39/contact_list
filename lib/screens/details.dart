import 'package:contact_list/models/contact.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  Map arguments = {};
  Contact contact;

  @override
  Widget build(BuildContext context) {

    arguments = ModalRoute.of(context).settings.arguments;
    contact = arguments['contact'];

    return Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Contact Details'),
        ),
      body: Container(
        height: 200,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  contact.name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.purple[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Email: ${contact.email}',
                        style: TextStyle(
                          color: Colors.purple[800],
                        ),
                      ),
                      Text(
                        'Phone: ${contact.phone}',
                        style: TextStyle(
                          color: Colors.purple[800],
                        ),
                      ),
                      Text(
                        'Company',
                        style: TextStyle(
                          color: Colors.purple[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 0.0),
                        child: Text(
                          contact.company.name,
                          style: TextStyle(
                            color: Colors.purple[800],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

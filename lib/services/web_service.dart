import 'package:contact_list/models/contact.dart';
import 'dart:convert';
import 'package:http/http.dart';

class WebService{

  static const String url = 'https://jsonplaceholder.typicode.com/users';
  static List<Contact> contactsList = [];

  static Future<void> getData() async {
    try{
      final Response response = await get(url);
      if (response.statusCode == 200) {
        contactsList = getContactList(response.body);
        print('cp: call happened $contactsList');
      }
      else{
        print('Cannot obtain message');      }
    }
    catch(e){
      print('Error: $e!');
    }
  }

  static List<Contact> getContactList(String response){
    List<Contact> contacts = [];
    List<dynamic> data = jsonDecode(response);
    //print('$data[0]');

    for(int i = 0; i < data.length; i++){
      Contact newContact = Contact.fromJson(data[i]);
      contacts.add(newContact);
      //print(contacts[i]);
    }
    return contacts;
  }

}
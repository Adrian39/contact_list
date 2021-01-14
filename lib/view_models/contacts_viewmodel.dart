import 'package:contact_list/models/contact.dart';
import 'package:contact_list/services/web_service.dart';

class ContactListViewModel {

  //WebService instance = WebService();
  List<Contact> contacts = [];

  Future<void> getData() async {
    await WebService.getData();
    contacts = WebService.contactsList;
    //print('cp: ViewModel getData happened $contacts');
  }

  List<Contact> getContactList() {
    return contacts;
  }

  int getListLength(){
    return contacts.length;
  }

}
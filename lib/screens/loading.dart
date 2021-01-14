import 'package:contact_list/view_models/contacts_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future setUpViewModels() async {
    ContactListViewModel contactListVMInstance = ContactListViewModel();
    await contactListVMInstance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'contact_list': contactListVMInstance.getContactList(),
    });
  }

  @override
  void initState(){
    super.initState();
    setUpViewModels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}

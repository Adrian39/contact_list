import 'package:contact_list/models/address.dart';
import 'package:contact_list/models/company.dart';

class Contact {
  int id;
  String name, username, email, phone, website;
  Address address;
  Company company;

  Contact({this.id, this.name, this.username, this.email, this.phone, this.website, this.company, this.address});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'] as int,
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      address: Address.fromJson(json['address']),
      company: Company.fromJson(json['company']),
    );
  }

}
import 'dart:convert';

import 'package:dio/dio.dart';

import 'persons_model.dart';

abstract class PersonsService {
  static Future<Persons?> getPersons() async {
    try {
      var response = await Dio().get('https://swapi.dev/api/people');

      if (response.statusCode == 200) {
        print(response.data);
        var res = Persons.fromJson(jsonDecode(response.data));
        print(res.total);
        return Persons.fromJson(jsonDecode(response.data));
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return null;
  }
}

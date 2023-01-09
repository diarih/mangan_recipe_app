import 'package:dio/dio.dart';

import 'persons_model.dart';

abstract class PersonsService {
  static Future<Persons?> getPersons() async {
    try {
      var response = await Dio().get('https://swapi.dev/api/people');

      if (response.statusCode == 200) {
        return Persons.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

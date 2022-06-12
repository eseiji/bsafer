import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiViaCEP {
  Future<Map<String, dynamic>> findCEP(String cep) async {
    var url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = await convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      return {"statusCode": response.statusCode};
      // throw Exception('Error status code: ${response.statusCode}');
    }
  }
}

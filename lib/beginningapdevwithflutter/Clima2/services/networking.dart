import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String? url;
  NetworkHelper({this.url});

  Future getData() async {
    http.Response response = await http.get(Uri.parse('$url'));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
      //var decodeData = jsonDecode(data);
      //var temp1 = temperature['data_day']['temperature_instant'][3];
      //print(temp1);
      //return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}

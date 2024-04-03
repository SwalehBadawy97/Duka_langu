import 'package:http/http.dart' as http;
import 'package:duka_langu/src/models/product_models.dart';

class HttpService {
  // static var client = http.Client();
  static Future<List<Welcome>> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
      return welcomeFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return welcomeFromJson(data);
    }
  }
}

import "dart:convert";
import "package:http/http.dart" as http;

class ProductsAPI {
  final String url = "https://jsonplaceholder.typicode.com/photos";

  getProducts() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load api data");
    }
  }
}

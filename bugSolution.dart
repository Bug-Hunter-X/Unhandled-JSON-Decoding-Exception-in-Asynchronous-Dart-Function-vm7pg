```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ... further processing of jsonData
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON format (e.g., display an error message)
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately (e.g., display an error message to the user)
  }
}
```
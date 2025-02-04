```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the bug is likely
      final jsonData = jsonDecode(response.body);
      // ... further processing of jsonData
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // This will catch both network errors and JSON decoding errors
    print('Error: $e');
    // Handle the error appropriately (e.g., display an error message to the user)
  }
}
```
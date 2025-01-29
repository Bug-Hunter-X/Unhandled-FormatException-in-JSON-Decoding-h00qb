```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData['someKey']);
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON gracefully (e.g., log the error, display a user-friendly message)
      } catch (e) {
        print('Error processing JSON: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```
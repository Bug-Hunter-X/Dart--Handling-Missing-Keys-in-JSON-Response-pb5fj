```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key in the JSON data
      final nonExistentValue = jsonData['nonExistentKey']; 
      print(nonExistentValue); //This will throw an exception if 'nonExistentKey' is not present
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle the error appropriately, e.g., show an error message to the user
  }
}
```
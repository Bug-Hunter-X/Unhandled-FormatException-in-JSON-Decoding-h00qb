# Unhandled FormatException in JSON Decoding

This repository demonstrates a common error in Dart applications involving JSON decoding:  failure to handle `FormatException` when the JSON data is invalid. The `bug.dart` file shows the problematic code. The solution, in `bugSolution.dart`, addresses the issue by using a `try-catch` block specifically for `FormatException`.
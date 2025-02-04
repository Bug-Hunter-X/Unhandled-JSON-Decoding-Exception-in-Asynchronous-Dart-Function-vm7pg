# Unhandled JSON Decoding Exception in Asynchronous Dart Function

This repository demonstrates a common error in asynchronous Dart code where JSON decoding exceptions are not handled properly.  The `fetchData` function makes a network request and attempts to parse the response as JSON.  However, it doesn't explicitly catch potential `FormatException` errors that can occur if the response body is not valid JSON. This leads to unexpected crashes or silent failures.

The `bug.dart` file contains the erroneous code. The `bugSolution.dart` file provides a corrected version with improved error handling.  The solution demonstrates how to explicitly catch the `FormatException` to handle cases where the JSON decoding fails gracefully.
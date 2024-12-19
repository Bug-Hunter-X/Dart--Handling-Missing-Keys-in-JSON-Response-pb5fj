# Dart: Handling Missing Keys in JSON Response

This repository demonstrates a common error in Dart applications that involve parsing JSON responses from APIs: attempting to access a key that may not exist in the JSON object.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version that handles missing keys gracefully.

## Problem

The `bug.dart` file contains code that fetches JSON data from an API.  It attempts to access a key (`nonExistentKey`) that might not be present in the JSON response.  If this key is missing, the code throws an exception, potentially crashing the application.

## Solution

The `bugSolution.dart` file demonstrates how to safely access JSON keys. It uses the `containsKey()` method to check if a key exists before accessing it. This prevents the exception and allows the application to continue running even if the key is absent.

## How to run

1. Clone this repository.
2. Run `dart bug.dart` to see the exception. 
3. Run `dart bugSolution.dart` to see the corrected behavior.
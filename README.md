<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

To safely and easily retrieve values from a map/json with useful and human friendly error messages. With little to no effort you can parse and guarantee the values type.

## Features

Retriever has 2 main features when parsing values from a map:

#### 1. Automatic error treatment:
```dart
  // This method will throw an error if the value is invalid
  Retriever.getString('key', map);

  // This method will return null if the value is invalid
  Retriever.getMaybeString('key', map);
```

#### 2. Errors that realy help
```
  RetrieverFormatError: Found invalid format when parsing key.
       Key: "name"
       Expected: "Integer"
       Found: "String", value: "myExampleName".
       Object: "{
                --> name: myExampleName
                    ^^^^
                    age: 40
                }"
```

With retriever you can safely parse:
- String
- Integer
- Double
- Date
- Map

## Getting started

Retriever has no dependencies other than dart it self, and all methods are static. This makes easy and performant to use.

## Usage

Giving the following map.
```dart
  final map = {
    'name': 'myExampleName',
    'age': 40,
  };
```

You can retrieve a string from a Map, just like that.
```dart
  final string = Retriever.getString('name', map);
  print(string); // 'myExampleName'
```

If the key doesn't exist or the value is not a valid, an error will be thrown.
The errors are very helpful and human readable, showing exactly what's going on.
```dart
  // Using getString on a "int" value with throw the following error
  Retriever.getString('age', map); // 'age' is a int. error will be thrown

  //  RetrieverFormatError: Found invalid format when parsing key.
  //       Key: "name"
  //       Expected: "Integer"
  //       Found: "String", value: "myExampleName".
  //       Object: "{
  //                --> name: myExampleName
  //                    ^^^^
  //                    age: 40
  //                }"
```

## Additional information

Feel free to [file an issue](https://github.com/cosmopool/retriever/issues/new) if you find a problem or [make pull requests](https://github.com/cosmopool/retriever/pulls).

All contributions are welcome :)

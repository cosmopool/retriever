import 'package:retriever/retriever.dart';

class User {
  final String name;
  final int age;
  final String? address;
  final String usesDart;
  final double height;
  final DateTime birthDate;

  User({
    required this.name,
    required this.age,
    required this.address,
    required this.usesDart,
    required this.height,
    required this.birthDate,
  });
}

void main() {
  // this map represents a parsed response from an api
  final responseFromBackend = {
    'name': 'asdf',
    'age': 21,
    'address': null,
    'uses_dart': true,
    'height': 1.78,
    'birth_date': '2023-01-01 00:00:00.000',
  };

  // here we will use retriever and explicit get a typed value from map
  // and instanciate a class with ease
  User(
    name: Retriever.getString('name', responseFromBackend),
    age: Retriever.getInt('age', responseFromBackend),
    address: Retriever.getMaybeString('address', responseFromBackend),
    usesDart: Retriever.getForceString('uses_dart', responseFromBackend),
    height: Retriever.getDouble('height', responseFromBackend),
    birthDate: Retriever.getDate('birth_date', responseFromBackend),
  );

  final map = {
    'name': 'myExampleName',
    'age': 40,
  };

  // to make shure that a given key have a valid value
  // we use the getString, getDouble, getInt or getDate method
  final string = Retriever.getString('name', map);
  print(string); // 'myExampleName'

  // if we try to get a key that do not exists, retriever will throw an error
  try {
    Retriever.getString('inexistentKey', map);
  } catch (e) {
    print(e); // this will print the following error...
    //
    //           RetrieverFormatError: Found invalid format when parsing key.
    //                Key: "inexistentKey"
    //                Expected: "String"
    //                Found: "Null", value: "null".
    //                Object: "{
    //                             name: myExampleName
    //                             age: 40
    //                         }"
  }

  // if the key exists, but have a value that do not conform with the method
  // the problematic key will be highlighted to help us visualize what is heppening
  try {
    // let's try to get an INT
    Retriever.getInt('name', map);
  } catch (e) {
    print(e); // this will print the following error...
    //
    //           RetrieverFormatError: Found invalid format when parsing key.
    //                Key: "name"
    //                Expected: "Integer"
    //                Found: "String", value: "myExampleName".
    //                Object: "{
    //                         --> name: myExampleName
    //                             ^^^^
    //                             age: 40
    //                         }"
  }

  // now, there will be sometimes that we do not want the error to be thrown
  // in that case, there's an specific method, that instead of an error
  // a null will be returned
  final name = Retriever.getMaybeInt('name', map);
  print(name); // null

  // and when you want any value to be converted to a string
  // in that case, there's an easy method you can use
  final age = Retriever.getForceString('age', map);
  print(age); // 40
  print(age.runtimeType); // String
}

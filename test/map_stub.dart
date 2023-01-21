const kString = "stringKey";
const kNull = "nullKey";
const kInt = "intKey";
const kDouble = "doubleKey";
const kMap = "mapKey";
const kList = "listKey";
const kBool = "boolKey";
const kSet = "setKey";
const kStringDate = "stringDateKey";
const kDateTime = "dateKey";

final testMapStub = {
  kString: "stringValue",
  kNull: null,
  kInt: 1,
  kDouble: 1.0,
  kMap: {'key': 'value'},
  kList: [1, 2],
  kBool: true,
  kSet: {1, 2},
  kStringDate: "202210-13T13:15:36.000Z",
  kDateTime: DateTime(2023),
};

import 'dart:convert';

void main() {
  jsonDecoding();
  jsonEncoding();
}

void jsonDecoding() {
  // NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
  var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

  var scores = jsonDecode(jsonString);
  //assert(scores is List);
  print(scores is List);

  var firstScore = scores[0];
  //assert(firstScore is Map);
  print(firstScore is Map);

  //assert(firstScore['score'] == 40);
  print(firstScore['score'] == 40);
}

void jsonEncoding() {
  var scores = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  var jsonText = jsonEncode(scores);

  print(jsonText);
  //assert(jsonText ==
  //    '[{"score":40},{"score":80},'
  //        '{"score":100,"overtime":true,'
  //        '"special_guest":null}]');
}

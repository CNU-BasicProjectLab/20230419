import 'dart:convert';

void main() {
  jsonDecoding();
  jsonEncoding();
}

// JSON -> array
void jsonDecoding() {
  // NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
  var jsonString = '''
  [
    {"score1": 40},
    {"score2": 80}
  ]
''';

  var scores = jsonDecode(jsonString);
  print(scores);

  Map firstScore = scores[0];
  print(firstScore);

  print('${firstScore.keys}, ${firstScore.values}');
}

// array -> JSON
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

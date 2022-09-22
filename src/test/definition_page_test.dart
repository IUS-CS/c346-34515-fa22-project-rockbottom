import 'package:RetroArcade/models/word.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:RetroArcade/main.dart';
import 'package:mockito/annotations.dart';
import 'package:RetroArcade/models/definition.dart';
import 'package:RetroArcade/screens/definition_page.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {

  group('fetchDefinition', () {
    test('returns a Definition if the http call completes successfully', () async {
      final client = MockClient((_) async =>
        http.Response(response, 200));
      expect(await fetchWord(client, "flutter"), isA<Word>());

    });
  });


}

String response = '{"word": "flutter", "ref": "c", "shortdef": "an alternating whipping motion of the legs used in various swimming styles (such as the crawl)", "fl": "noun"}';
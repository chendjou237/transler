import 'package:transler/translate/features/translate/data/datasources/mock_data.dart';

class TranslateRepository {
  String translate(String text) {
    try {
     text = text.toLowerCase();
      if ((data['french'] as Map).containsKey(text)) {
        return data['french'][text] as String;
      } else if ((data['english'] as Map).containsKey(text))
        return data['english'][text] as String;
      else
        throw Exception('Your text is not in the database');
    } catch (e) {
      rethrow;
    }
  }
}

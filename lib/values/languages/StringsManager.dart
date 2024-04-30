import 'package:mahdi_flutter_challenge_arman/values/languages/Strings_fr.dart';
import 'package:mahdi_flutter_challenge_arman/values/languages/Strings_sv.dart';
import 'package:mahdi_flutter_challenge_arman/values/languages/language_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'strings.dart';
import 'Strings_en.dart';

class StringsManager {
 static Strings strings = StringsEN();
  static List<Strings> stringsList = [StringsEN(), StringsFR(), StringsSV()];

  init() async {

    updateStringsResource();
  }

 static Future<SharedPreferences> getInstance() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref;
  }

  static void updateStringsResource() async {
    SharedPreferences pref = await getInstance();

    String? selectedLanguage = pref.getString("selectedLanguage");
    print('StringsManager.updateStringsResource ${selectedLanguage}');
    if (selectedLanguage == LanguageEnum.en.name) {
      strings = stringsList[0];
    } else if (selectedLanguage == LanguageEnum.fr.name) {
      strings = stringsList[1];
    } else if (selectedLanguage == LanguageEnum.sv.name) {
      strings = stringsList[2];
    } else {
      strings = stringsList[0];
    }
  }

  static Strings getStrings(){
    return strings;
  }

  void seStringResource(LanguageEnum languageEnum)async{
    SharedPreferences pref = await getInstance();
    updateStringsResource();
    await pref.setString("selectedLanguage", languageEnum.name);

  }
}

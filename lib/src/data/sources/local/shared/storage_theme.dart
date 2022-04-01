import 'package:recipely_app_v1/src/domain/repositorires/shared/shared_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageTheme implements SharedRepository {
  const StorageTheme();
  static late SharedPreferences _sharedPref;
  static String themeKey = "theme";
  Future<void> getInit() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  @override
  getData() async {
    await getInit();
    var result = _sharedPref.getBool(themeKey) ?? false;
    return result;
  }

  @override
  saveData(model) async {
    await getInit();
    return await _sharedPref.setBool(themeKey, model);
  }
}

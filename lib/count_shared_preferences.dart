import 'package:shared_preferences/shared_preferences.dart';

class CountSharedPreferences {
  final String counterkey = 'counter';

  Future<bool> saveCount(int value) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.setInt(counterkey, value);
  }

  Future<int> getCount() async {
    final pref = await SharedPreferences.getInstance();
    final value = pref.getInt(counterkey) ?? 0;
    return value;
  }

  Future<bool> removeData() async {
    final pref = await SharedPreferences.getInstance();
    return await pref.remove(counterkey);
  }
}
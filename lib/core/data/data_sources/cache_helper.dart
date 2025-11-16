abstract class CacheHelper {
  Future get(String key);

  Future<bool?> getBool(String key);

  Future<bool> has(String key);

  Future<bool> put(String key, dynamic value);

  Future<bool> putBool(String key, bool value);

  Future<bool> clear(String key);
}
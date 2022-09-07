abstract class Environment {
  abstract final String shopBaseUrl;
}

class DevEnvironment implements Environment {
  const DevEnvironment();

  @override
  String get shopBaseUrl =>
      'https://fir-flutter-shop-cd4c3-default-rtdb.firebaseio.com';
}

class StageEnvironment implements Environment {
  const StageEnvironment();

  @override
  String get shopBaseUrl =>
      'https://fir-flutter-shop-cd4c3-default-rtdb.firebaseio.com';
}

class ProdEnvironment implements Environment {
  const ProdEnvironment();

  @override
  String get shopBaseUrl =>
      'https://fir-flutter-shop-cd4c3-default-rtdb.firebaseio.com';
}

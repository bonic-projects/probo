import 'package:flutter_test/flutter_test.dart';
import 'package:probo/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('BeltDatabaseServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}

import 'dart:async';

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/collection_generator.dart';

///
/// @author <a href="mailto:angcyo@126.com">angcyo</a>
/// @date 2025/08/16
///
///

//--

Builder getIsarGenerator(BuilderOptions options) => SharedPartBuilder([
  IsarCollectionGenerator(),
  IsarEmbeddedGenerator(),
], 'isar_generator');

//--

Builder generatorBuilderTest(BuilderOptions options) {
  print("构建选项->$options");
  return SharedPartBuilder(const <Generator>[
    BuildGeneratorTest(),
  ], 'build_generator_test');
}

/// 代码构建
///
/// - 简单示例 https://github.com/dart-lang/source_gen/blob/master/source_gen/test/src/comment_generator.dart
/// - 完整示例 https://github.com/dart-lang/source_gen/tree/master/example_usage
///
class BuildGeneratorTest extends Generator {
  const BuildGeneratorTest();

  @override
  FutureOr<String?> generate(LibraryReader library, BuildStep buildStep) {
    print("开始编译->$library");
    return '''
    const angcyo = "test";
    ''';
  }
}

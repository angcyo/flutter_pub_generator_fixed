import 'package:build/build.dart';
import 'package:flutter_hive_generator_fixed/src/type_adapter_generator.dart';
import 'package:source_gen/source_gen.dart';

///
/// @author <a href="mailto:angcyo@126.com">angcyo</a>
/// @date 2025/08/17
///
///

Builder getBuilder(BuilderOptions options) =>
    SharedPartBuilder([TypeAdapterGenerator()], 'hive_generator');

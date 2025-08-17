import 'package:hive/hive.dart';

part 'hive_generator_object.g.dart';

///
/// @author <a href="mailto:angcyo@126.com">angcyo</a>
/// @date 2025/08/17
///
@HiveType(typeId: 0)
class Person extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late int age;

  Person();
}

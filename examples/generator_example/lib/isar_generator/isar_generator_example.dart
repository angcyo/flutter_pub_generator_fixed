import 'package:isar/isar.dart';

part 'isar_generator_example.g.dart';

///
/// @author <a href="mailto:angcyo@126.com">angcyo</a>
/// @date 2025/08/17
///
///

@collection
class Email {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(type: IndexType.value)
  String? title;

  List<Recipient>? recipients;

  @enumerated
  Status status = Status.pending;
}

@embedded
class Recipient {
  String? name;

  String? address;
}

enum Status { draft, pending, sent }

import 'package:dartx/dartx.dart';
import 'package:isar/isar.dart';
import '../isar_type.dart';
import '../object_info.dart';

String generateQueryObjects(ObjectInfo oi) {
  var code =
      'extension ${oi.dartName}QueryObject on QueryBuilder<${oi.dartName}, '
      '${oi.dartName}, QFilterCondition> {';
  for (final property in oi.objectProperties) {
    if (!property.isarType.containsObject) {
      continue;
    }
    var name = property.dartName.decapitalize();
    if (property.isarType.isList) {
      name += 'Element';
    }
    code += '''
      QueryBuilder<${oi.dartName}, ${oi.dartName}, QAfterFilterCondition> $name(FilterQuery<${property.typeClassName}> q) {
        return QueryBuilder.apply(this, (query) {
          return query.object(q, r'${property.isarName}');
        });
      }''';
  }

  return '''
    $code
  }''';
}

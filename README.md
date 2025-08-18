# flutter_pub_generator_fixed

维护了一些社区许久没有更新`Flutter SDK`的`build_runner`库.

## 当前维护情况如下

|包|旧依赖|新依赖|
--|--|--|
[`isar_generator-3.1.0+1`](https://pub.dev/packages/isar)| `isar_generator: 3.1.0+1`| `flutter_isar_generator_fixed: x.y.z` [![pub package](https://img.shields.io/pub/v/flutter_isar_generator_fixed.svg)](https://pub.dev/packages/flutter_isar_generator_fixed)
[`hive_generator: ^2.0.1`](https://pub.dev/packages/hive_generator)| `hive_generator: ^2.0.1`| `flutter_hive_generator_fixed: x.y.z` [![pub package](https://img.shields.io/pub/v/flutter_hive_generator_fixed.svg)](https://pub.dev/packages/flutter_hive_generator_fixed)

## [flutter_isar_generator_fixed](https://github.com/angcyo/flutter_pub_generator_fixed/tree/main/packages/flutter_isar_generator_fixed)

```diff
+ build_runner: ^2.7.0
+ build: ^3.0.2

+ source_gen: ^3.1.0
+ analyzer: ^8.1.1
+ dart_style: ^3.1.2

+ isar: ^3.1.0+1
```

## [flutter_hive_generator_fixed](https://github.com/angcyo/flutter_pub_generator_fixed/tree/main/packages/flutter_hive_generator_fixed)

```diff
+ build_runner: ^2.7.0
+ build: ^3.0.2

+ source_gen: ^3.1.0
+ source_helper: ^1.3.7
+ analyzer: ^8.1.1

+ hive: ^2.2.3
```
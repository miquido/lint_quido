<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# lint_quido [![style: miquido lints](https://badgen.net/badge/style/lint_quido/blue?icon=terminal)](https://github.com/miquido/lint_quido)
##### This is collection of Flutter lints that we use and follow in [Miquido Software development company](https://www.miquido.com).

This is strict, large and robust collection because we strive for high quality code, good practices and we want follow the same coding style in all our mobile apps.

And we just looooove lots of lints. :blue_heart:

---

## Usage
#### Installation
For a start please make sure you work with latest version of Flutter & Dart.
```yaml
environment:
  sdk: ">=2.19.2 <3.0.0"
  flutter: ^3.7.7
```

Then add a dev dependency in your `pubspec.yaml`:
From command line: 
```bash
flutter pub add --dev lint_quido
#then
pub get
```

or directly in pubspec.yaml

```yaml
dev_dependencies:
  lint_quido: 1.0.0
```

At last in `analysis_options.yaml` add:
```yaml
include: package:lint_quido/miquido_lints.yaml
```

**And that is all folks! You are good to go!**

### Excluding and suppressing rules
###### Not recommended... :wink:
If for some reason you don't want follow some lints, you can exclude or suppress them.
You can always check [example](/example/lib).

##### Excluding
To completely exclude rule from linter, modify `analysis_options.yaml`:
```yaml
analyzer:
  errors: #linters from flutter sdk
    unawaited_futures: ignore

dart_code_metrics:
  rules-exclude: #linters from dart_code_metrics
    - prefer-last
```

##### Suppressing
In code add _ignore_ comments
- at line level (comment directly above the specific line of code):
```dart
// ignore: public_member_api_docs
```
- at file level (comment at the top of the file):
```dart
// ignore: public_member_api_docs
```

## Commands
To analyze your code in terminal use this commands:
```sh
# Default flutter analyze, mandatory to pass!
flutter analyze

# Dart metrics analyze, not mandatory to pass!
# Also it calculate total technical debt of your project.
dart run dart_code_metrics:metrics analyze lib

# Find unused files in your code! Nice to keep eye on this one.
dart run dart_code_metrics:metrics check-unused-files lib

# You can check if all nullable variables are necessary in your code with
dart run dart_code_metrics:metrics check-unnecessary-nullable lib

# find unused line of codes
dart pub run dart_code_metrics:metrics check-unused-code lib
```

[Here](https://dcm.dev/docs/individuals/cli/analyze/) you can find documentation about dart metrics commands.

## Troubleshooting
Sometimes working with cutting-edge versions might cause dependencies incompatibilities. For example `lint_quido` do not want to cooperate with test_api package or analyzer package and so on.
To overcome this use older version of package or try using
`dependency_overrides` in your pubspec.yaml file.

In your pubspec add:
```yaml
dependency_overrides:
  test_api: 0.4.17
```

## Additional information
This is set of sources from which we are getting our linters and about good practices in Dart/Flutter:
- [All Dart lints](https://dart-lang.github.io/linter/lints/)
- [All Dart lints, but this time linter source code](https://github.com/dart-lang/linter/blob/master/example/all.yaml)
- [Customizing static analysis in Dart](https://dart.dev/guides/language/analysis-options)
- [Effective Dart: Usage](https://dart.dev/guides/language/effective-dart/usage)
- [Flutter lints](https://github.com/flutter/packages/tree/master/packages/flutter_lints)
- [Dart metrics](https://dcm.dev/docs/individuals/rules/)
- [Dart language type system](https://github.com/dart-lang/language/tree/master/resources/type-system)

---
#### About Miquido
- [About](https://careers.miquido.com/about-us/)
- [Careers](https://careers.miquido.com/job-offers/)
- [Internship at Miquido](https://careers.miquido.com/students/)
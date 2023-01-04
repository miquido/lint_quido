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
# lint_quido [![style: miquido lints](https://badgen.net/badge/style/miquido-flutter-lints/blue?icon=terminal)](https://github.com/miquido/lint_quido)
##### This is collection of Flutter lints that we use and follow in [Miquido Software development company](https://www.miquido.com).

This is strict, large and robust collection because we strive for high quality code, good practices and we want follow the same coding style in all our mobile apps.

And we just looooove lots of lints. :blue_heart:

---
## Getting started
We tested current configuration with this environment:
```yaml
environment:
  sdk: ">=2.18.0 <3.0.0"
  flutter: ^3.3.5
```

so it is required to update your flutter project to meet this conditions.

#### Installation
Reference this package in your `pubspec.yaml` in **dev_dependencies** section.

Until we are not published in [pub.dev](https://pub.dev), reference it like this

```yaml
dev_dependencies:
  lint_quido:
    git:
      url: https://github.com/miquido/lint_quido.git
      ref: main
```

or

you can copy content of [this file](lib/miquido_lints.yaml) to your `analysis_options.yaml`. In this approach remember that you need to depend on `dart_code_metrics: 4.21.2`, and you will need to add that package to your `pubspec.yaml` as well. Also you will need to visit this repository from time to time to check for changes! 

Also if you star this repo, that would be nice.

## Usage
After you add `lint_quido` package as a dev_dependency, we recommend to copy code from below to `analysis_options.yaml` file which is in root of your flutter project folder.

```yaml
include: package:lint_quido/miquido_lints.yaml

analyzer:
  errors:
    # Those are handy, but annoying lints. Remember to change `ignore` to `info` once per two weeks or before app release.
    prefer_const_constructors: ignore
    prefer_const_constructors_in_immutables: ignore
```

And that is all folks! You are good to go!

#### Excluding and suppressing rules
###### Not recommended... :wink:
If for some reason you don't agree with some linters, or you heavily oppose some approaches you can exclude or suppress lints.

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

#### Commands
To analyze your code in terminal use this commands:
```sh
# Default flutter analyze, mandatory to pass!
flutter analyze

# Find unused files in your code! Nice to keep eye on this one.
dart run dart_code_metrics:metrics check-unused-files lib

# Dart metrics analyze, not mandatory to pass!
# Also it calculate total technical debt of your project.
dart run dart_code_metrics:metrics analyze lib
```

[Here](https://dartcodemetrics.dev/docs/cli/overview#available-commands) you can find documentation about dart metrics command.

## Additional information
This is set of sources from which we are getting our linters and about good practices in Dart/Flutter:
- [All Dart lints](https://dart-lang.github.io/linter/lints/)
- [All Dart lints, but this time linter source code](https://github.com/dart-lang/linter/blob/master/example/all.yaml)
- [Customizing static analysis in Dart](https://dart.dev/guides/language/analysis-options)
- [Effective Dart: Usage](https://dart.dev/guides/language/effective-dart/usage)
- [Flutter lints](https://github.com/flutter/packages/tree/master/packages/flutter_lints)
- [Dart metrics](https://dartcodemetrics.dev/docs/rules/overview)
- [Dart language type system](https://github.com/dart-lang/language/tree/master/resources/type-system)

---
#### About Miquido
- [About](https://careers.miquido.com/about-us/)
- [Careers](https://careers.miquido.com/job-offers/)
- [Internship at Miquido](https://careers.miquido.com/students/)
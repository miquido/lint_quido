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
# miquido_flutter_lints
##### This is collection of Flutter lints that we use and follow in [Miquido Software development company](https://www.miquido.com).

This is strict, large and robust collection beacuse we strive for high quality code, good practices and we want follow the same coding style in all our mobile apps.

And we just looooove lots of lints.

## Features

- Using and following this linter makes your code better. FACTS.

## Getting started

We tested current configuration with this enviroment:
```yaml
environment:
  sdk: ">=2.16.1 <3.0.0"
  flutter: ^2.10.3
```

so we recommend to update your flutter project to met this conditions.

#### Installation

Reference this package in your `pubspec.yaml` in **dev_dependencies** section.

Until we are not published in [pub.dev](https://pub.dev), reference it like this

```yaml
dev_dependencies:
  miquido_flutter_lints:
    git:
      url: https://github.com/miquido/miquido_flutter_lints.git
      ref: main
```

or

you can copy content of [this file](lib/miquido_lints.yaml) to your `analysis_options.yaml`. In this approach remember that you need to depend on `dart_code_metrics: 4.12.0`, and you will need to add that package to your `pubspec.yaml` as well. Also you will need to visit this repository from time to time to check for changes! 

Also if you star this repo, that would be nice.

## Usage

After you add `miquido_flutter_lints` package as a dev_dependency, we recommend to copy code from below to `analysis_options.yaml` file which is in root of your flutter project folder.

```yaml
include: package:miquido_flutter_lints/miquido_lints.yaml

analyzer:
  errors:
    # Those are handy, but annoying lints. Remember to change `ignore` to `info` once per two weeks or before app release.
    prefer_const_constructors: ignore
    prefer_const_constructors_in_immutables: ignore
```

And that is all folks! You are good to go!

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

[Here](https://dartcodemetrics.dev/docs/cli/overview#available-commands) you can find documentation aboud dart metrics command.

## Additional information

This is set of sources from which we are getting our linters and about good practices in Dart/Flutter:
- [All Dart lints](https://dart-lang.github.io/linter/lints/)
- [All Dart lints, but this time linter source code](https://github.com/dart-lang/linter/blob/master/example/all.yaml)
- [Customizing static analysis in Dart](https://dart.dev/guides/language/analysis-options)
- [Effective Dart: Usage](https://dart.dev/guides/language/effective-dart/usage)
- [Flutter lints](https://github.com/flutter/packages/tree/master/packages/flutter_lints)
- [Dart metrics](https://dartcodemetrics.dev/docs/rules/overview)
- [Dart language type system](https://github.com/dart-lang/language/tree/master/resources/type-system)

#### About Miquido

- [About](https://careers.miquido.com/about-us/)
- [Careers](https://careers.miquido.com/job-offers/)
- [Internship at Miquido](https://careers.miquido.com/students/)
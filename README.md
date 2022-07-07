# Flutter Store App

[![build][main_workflow_badge]][main_workflow_link]
[![Codemagic build status][codemagic_badge]][codemagic_link]
[![License: MIT][license_badge]][license_link]

A Flutter pet project.
### [Freezed](https://pub.dev/packages/freezed)
code generator for data-classes/unions/pattern-matching/cloning.

To run the code generator, execute the following command:
- flutter pub run build_runner build
or
- flutter pub run build_runner watch --delete-conflicting-outputs

### [Flutter_localizations](https://docs.flutter.dev/development/accessibility-and-localization/internationalization#adding-your-own-localized-messages)
To run the code generator, execute the following command:
 - flutter gen-l10n
 
Flutter internationalization: .arb files
Application Resource Bundle (abbr. ARB)  is a localization resource format that is simple (based on JSON) [ApplicationResourceBundleSpecification](https://github.com/google/app-resource-bundle/wiki/ApplicationResourceBundleSpecification#namespace-reference-with-or-without-variation-part)

## Testing
### [Mockito](https://pub.dev/packages/mockito)
A mock framework inspired by Mockito with APIs for Fakes, Mocks, behavior verification, and stubbing.

generate the mocks running the following command:
- flutter pub run build_runner build

[main_workflow_badge]: https://github.com/alexxbo/store_app/actions/workflows/main_workflow.yml/badge.svg?branch=main
[main_workflow_link]: https://github.com/alexxbo/store_app/actions/workflows/main_workflow.yml
[codemagic_badge]: https://api.codemagic.io/apps/62c421f31d850157f705c0b0/62c421f31d850157f705c0af/status_badge.svg
[codemagic_link]: https://codemagic.io/apps/62c421f31d850157f705c0b0/62c421f31d850157f705c0af/latest_build
[license_badge]: https://img.shields.io/badge/License-MIT-yellow.svg
[license_link]: https://opensource.org/licenses/MIT
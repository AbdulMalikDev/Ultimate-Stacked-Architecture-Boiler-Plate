# Ultimate Stacked Architecture Boiler Plate For Flutter

No more time waste in setting up a Flutter project in stacked architecture. 

# What is included ?

> Main Packages

- Stacked Flutter Package [ to implement the architecture ]

- Stacked Services Package [ to implement various services ]

- Responsive Builder Package [ to implement responsive UI ]

> Code Generators

- Auto_Route Package [ Automating Routing Code ]

- Injectable [ code generator for get_it ]

- Json-Serializable [ Automating writing of functions to/from JSON for models ]

> Testing

- Mockito 

> Other

- Logger [ For comprehensive logging ]

- Device Preview [ For viewing app in different screen sizes ]

- auto_size_text [ For appropriate text scaling according to screen size ]

## Starting File Structure

```
|-- lib
|   |-- app
|   |   |-- locator.dart
|   |   |-- locator.iconfig.dart
|   |   |-- logger.dart
|   |   |-- router.dart
|   |   '-- router.gr.dart
|   |-- main.dart
|   |-- models
|   |   |-- example.dart
|   |   '-- example.g.dart
|   |-- services
|   |   '-- functional_services
|   |       '-- third_party_services_module.dart
    |   '-- state_services
|   '-- ui
|       |-- views
|       |   |-- home
|       |   |   |-- home_view
|       |   |   |   |-- home_view.dart
|       |   |   |   |-- home_view_mobile.dart
|       |   |   |   '-- home_view_tablet.dart
|       |   |   '-- home_viewmodel.dart
|       |   '-- login
|       |       |-- login_view.dart
|       |       '-- login_viewmodel.dart
|       '-- widgets
|           '-- smart_widgets
|               '-- drawer
|-- pubspec.yaml
'-- test
    |-- services_tests
    |-- viewmodel_tests
    |-- setup
    |   |-- test_data.dart
    |   '-- test_helpers.dart
    '-- widget_test.dart

```

# cattlemanager

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Packages Used
      To add packages into your project,go to pubspec.yaml file and add the package in the dependency sections and run "flutter pub get"
 ### 1.cupertino_icons:
        This is an asset repo containing the default set of icon assets used by Flutter's Cupertino widgets.
        In your Dart code, you can use:
            import 'package:cupertino_icons/cupertino_icons.dart';
 ### 2.flutter_datetime_picker:
        A flutter date time picker inspired by flutter-cupertino-date-picker you can choose date / time / date&time in multiple languages.
        In your Dart code, you can use:
            import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
### 3.flutter_barcode_scanner : 
        A plugin for Flutter apps that adds barcode scanning support on both Android and iOS.
        In your Dart code, you can use:
            import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
### 4.dropdownfield:
        Custom Flutter Widget for a customizable dropdown field with auto-complete functionality This widget is meant to be used within a Flutter Form
        In your Dart code, you can use:
           import 'package:dropdownfield/dropdownfield.dart';
### 5.dropdown_formfield:
        A dropdown form field using a dropdown button inside a form field.
        In your Dart code, you can use:
        import 'package:dropdown_formfield/dropdown_formfield.dart';
### 6.intl:
            Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.The most important library is intl. It defines the Intl class, with the default locale and methods for accessing most of the internationalization mechanisms. This library also defines the DateFormat, NumberFormat, and BidiFormatter classes.
       In your Dart code, you can use:
          import 'package:intl/intl.dart'; 
### 7.font_awesome_flutter:
        The Font Awesome Icon pack available as set of Flutter Icons.

            Based on Font Awesome 5.15.3. Includes all free icons:

             -> Regular
             -> Solid
             -> Brands
         In your Dart code, you can use:
            import 'package:font_awesome_flutter/font_awesome_flutter.dart';
### 8.flutter_plugin_android_lifecycle:
          A Flutter plugin for Android to allow other Flutter plugins to access Android Lifecycle objects in the plugin's binding.

          The purpose of having this plugin instead of exposing an Android Lifecycle object in the engine's Android embedding plugins API is to force plugins to have a pub constraint that signifies the major version of the Android Lifecycle API they expect.
          In your Dart code, you can use:
           import 'package:flutter_plugin_android_lifecycle/flutter_plugin_android_lifecycle.dart';
### 9.http:
        A composable, Future-based library for making HTTP requests.
        This package contains a set of high-level functions and classes that make it easy to consume HTTP resources. It's multi-platform, and supports mobile, desktop, and the browser.
        In your Dart code, you can use:
            import 'package:http/http.dart';
 ## Run the project
    $  flutter run

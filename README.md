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


# Rounded Text Form Field

```rounded_text_form_field```  A Flutter library for rounded text form field with custom design and decoration with support for labels, hints, validation, and more. This widget simplifies the process of creating and customizing text input fields in your Flutter applications.  ✨

It's support some type of image decoration such as [ TextInputAction, TextEditingController, HintText, Validator, Enabled or ReadOnly], etc.


## Installation

Create a new project with the command

```yaml
flutter create MyApp
```

Add

```yaml
rounded_text_form_field: ...
```

to your `pubspec.yaml` of your flutter project.
**OR**
run

```yaml
flutter pub add rounded_text_form_field
```

in your project's root directory.

In your library add the following import:

```dart
import 'package:rounded_text_form_field/rounded_text_form_field.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rounded Text Form Field',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                RoundedTextFormField(
                  textInputAction: TextInputAction.done,
                  controller: nameTextField,
                  hintText: "Please enter your name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    } else if (value.length < 4) {
                      return "Please enter valid name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )
    );
  }
}
```


## Constructor

#### Basic

| Parameter       | Default | Description                       | Required |
|-----------------|:--------|:----------------------------------|:--------:|
| controller      | -       | Text Editing Controller.          |   True   |
| hintText        | -       | Text form field hint text .       |   True   |
| validator       | -       | Text form field validator.        |  false   |
| textInputAction | -       | Keyboard input action.            |  false   |
| enabled         | true    | To enable and disable text field. |  false   |
| readOnly        | false   | Set read only status.             |  false   |
| onPressed       | -       | OnTap call back.                  |  false   |
| maxLines        | 1       | Text form field max line.         |  false   |

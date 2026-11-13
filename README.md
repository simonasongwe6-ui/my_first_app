# My First Flutter App

This project is **Lab 1** for *Introduction to Mobile Applications*. It is a
simple Flutter application that displays a personalized greeting and a welcome
message.

## Technologies used

- Flutter and Dart
- Material UI widgets (`material_ui` package)
- Flutter's `MediaQuery` API and `debugPrint` for reporting screen width

## How to run

1. Install the Flutter SDK and connect a device or start an emulator.
2. From the project directory, fetch the dependencies:

   ```sh
   flutter pub get
   ```

3. Run the application:

   ```sh
   flutter run
   ```

The screen width is printed in the Flutter debug console or terminal when the
screen builds.

## Features

- Displays the personalized greeting **“Hello, Simon Akuma Asongwe!”**
- Uses a teal-seeded Material color scheme.
- Arranges the greeting and **“Welcome to Introduction to Mobile Applications!”**
  vertically in a `Column` containing two `Text` widgets.
- Reads the available screen width with `MediaQuery.of(context).size.width` and
  prints it as **“Screen width in dp”** using `debugPrint`.

## What I learned and what blocked me

- The app demonstrates arranging text with Flutter widgets, creating a seeded
  color scheme, and reading the screen's logical width with `MediaQuery`.
- No specific blockers are documented in the current project files.

## Screenshots

- [Running app](docs/Running%20App.png)
- [Running code](docs/Running%20Code.png)
- [Flutter doctor](docs/flutter_doctor.png)

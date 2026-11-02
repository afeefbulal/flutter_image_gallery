# Flutter Image Gallery

A Flutter application that fetches and displays images from the Picsum Photos API.

## Features
- Fetch images using REST API.
- Display images in a two-column grid.
- Show image author names.
- Loading and error state handling.

## Technologies Used
- Flutter
- Dart
- HTTP
- Provider
- MVVM Architecture

## Architecture
- Model: Represents image data.
- Service: Handles API requests.
- Repository: Converts JSON into model objects.
- ViewModel: Manages application state.
- View: Displays the user interface.

## API
https://picsum.photos/v2/list

## How to Run

1. Clone this repository.
2. Run `flutter pub get`.
3. Run `flutter run`.
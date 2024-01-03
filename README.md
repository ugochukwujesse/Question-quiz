# questionandanswer_game_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Architecture
This project uses the clean architecture approach, ensuring Separation of Concerns across codebase.
The folder structure comprises:

```
lib/
|-- app/
|   |-- modules/
|   |          |-- data/
|   |          |-- domain/
|   |          |-- presentation/
|
|
|   |-- shared/
|   |          |-- helpers/

|-- core/
|   |-- framework/
|   |-- utility/
|-- main.dart

```
## Screenshot

|                   Question Screen                   |                     failed Popup                      |
|:---------------------------------------------------:|:-----------------------------------------------------:|
| <img src="assets/screenshots/home.png" width="500"> | <img src="assets/screenshots/failed.png" width="500"> |

|                     Passed Popup                      |
|:-----------------------------------------------------:|
| <img src="assets/screenshots/passed.png" width="500"> | 

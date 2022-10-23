# Flutter GetX Template (GetX, Dio, MVC)

This Flutter Template using [GetX](https://pub.dev/packages/get) package for State management, routing and Dependency Injection (bindings). We are using [MVVM](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel) (Model View ViewModel) architectural pattern here. For network call we are using [Dio](https://pub.dev/packages/dio) package. We followed the recommended folder structure of GetX and used [Get CLI](https://pub.dev/packages/get_cli) command line tool for creating the folder structure.


### Code Patteren: MVVM
### State Manager: GetX
### Dependency Injection: Bindings
### Navigator: GetX
### CI/CD: GitHub Action
### Rest API: Dio
### Database & Auth: Firebase
### Local Storage: Shared prefrences & Hive
### Database: Firebase
### Other Feature: Flavor




# How to update app information and continue development for your own project?

1. Rename root folder name
2. Update project name and description from pubspec.yaml.
3. Update app launcher name and icon. [Reference](https://medium.com/@vaibhavi.rana99/change-application-name-and-icon-in-flutter-bebbec297c57)
4. Update your app's package name by [running this command](https://pub.dev/packages/change_app_package_name):

`flutter pub run change_app_package_name:main your_package_name`




# How to update GIT Repo:
`git remote set-url origin {remote_url}`

`git remote -v`





# run this project by command line
Dev: `flutter run --flavor dev lib/main_dev.dart`

Prod: `flutter run --flavor prod lib/main_prod.dart`


# How to generate Image assets variable file?

1. add image in assets/images.
2. run this command line and use with "Images.{image_name}"

`flutter packages pub run build_runner build --delete-conflicting-outputs`




# How to update app information and continue development for your own project?

1. Rename root folder name
2. Update project name and description from pubspec.yaml.
3. Update app launcher name and icon. [Reference](https://medium.com/@vaibhavi.rana99/change-application-name-and-icon-in-flutter-bebbec297c57)
4. Update your app's package name by [running this command](https://pub.dev/packages/change_app_package_name):

`flutter pub run change_app_package_name:main your_package_name`


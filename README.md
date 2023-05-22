# FlutterPageBricks

FlutterPageBricks is a repo of various mason cli bricks that are opinionated about how to structures Flutter code. 

The first brick is Page which provides the default code for implementing a page (or feature) in a Flutter app. This brick will generate the folder structure, view files, bloc files and 100% tests for a basic application page.

## Structure of a Flutter Page (feature)

- page_name
  - bloc
    - page_name_bloc.dart //base bloc code for the page
    - page_name_state.dart //partial of bloc file that holds all the various states
    - page_name_events.dart //partial of bloc file that holds all the events for the bloc
  - view_model
    - page_name_view_model.dart
  - views
    - page_name_loaded_view.dart //base file for the page view
    - page_name_error_view.dart //if the bloc has an error state
    - page_name_skeleton_view.dart //if the bloc is in a loading state
  - page_name.dart //base file that holds it all together

##Getting Started
Check out the [mason cli docs](https://pub.dev/packages/mason_cli#installation) to install mason

Once you have Mason CLI, you can create a new page in your flutter app by navigating to the /lib folder of the project and running the following command
```
mason add scuPage
mason make scuPage 'nameOfNewPage'
```

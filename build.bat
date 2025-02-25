@echo off
REM Build the Flutter web app with CSP compatibility
flutter build web --csp --dart-define=FLUTTER_WEB_RENDERER=html
echo Flutter build completed with CSP compatibility.

# Expense Tracker

A Flutter application to track your expenses.

## Features

- Add, view, and remove expenses
- Categorize expenses (house, travel, health, leisure)
- Visualize expenses with charts
- Responsive design for light and dark themes
- Cross-platform support (Android, iOS, Windows, macOS, Linux, Web)

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart 3.9.0 or higher

### Installation

1. Clone the repository:
   ```sh
   git clone <repository-url>
   cd expense_tracker
   ```

2. Install dependencies:
   ```sh
   flutter pub get
   ```

3. Run the app:
   ```sh
   flutter run
   ```

## Project Structure

- `lib/` - Main application code
- `test/` - Unit and widget tests
- `android/`, `ios/`, `macos/`, `windows/`, `linux/`, `web/` - Platform-specific files

## Customization

- Change color schemes in [`lib/main.dart`](lib/main.dart)
- Add new expense categories in [`lib/models/expense.dart`](lib/models/expense.dart)

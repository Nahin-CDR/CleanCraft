# CleanCraft

CleanCraft is a simple, modular app designed to practice and demonstrate clean coding principles. The goal of this project is to build an app using best practices such as SOLID principles, proper separation of concerns, and a clean architecture.

## Features

- **Task Management**: Create, update, and delete tasks with ease.
- **Categorization**: Organize tasks by categories and priorities.
- **State Management**: Efficient state management using Provider.
- **Modular Structure**: Clear separation of features into independent, reusable modules.

## Architecture

The app follows a clean architecture pattern, promoting:
- Separation of concerns.
- Testability of individual components.
- Independent data, domain, and presentation layers.

### Layered Structure:
- **Data Layer**: Handles data fetching and storage (e.g., API, database).
- **Domain Layer**: Contains business logic and use cases.
- **Presentation Layer**: Manages the UI, user interaction, and state management.

## Technologies

- **Flutter**: For cross-platform app development.
- **Dart**: The programming language used for Flutter apps.
- **Provider**: For state management.
- **Dio**: For API handling and network calls (if applicable).

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:
- Flutter SDK (latest version)
- Dart SDK (included with Flutter)
- Any IDE (such as VS Code or Android Studio)

### Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/cleancraft.git

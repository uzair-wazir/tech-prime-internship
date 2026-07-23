# 🎓 Student Management System (Dart)

A simple, console-based **Student Management System** built in Dart to demonstrate core Object-Oriented Programming (OOP) concepts — inheritance, abstract classes/interfaces, encapsulation, collections, exception handling, and asynchronous programming.

## ✨ Features

- **Add Student** — Create a student with name, age, registration number, and marks (validated to be between 0–100).
- **Show All Students** — List every student currently stored, with full details.
- **Search Student by RegNo** — Look up a student instantly using a `Map` for O(1) lookup.
- **Sync With Server (async demo)** — Simulates an asynchronous server call using `Future` and `Duration`.
- **Input Validation & Error Handling** — Graceful handling of invalid input and missing records via `try/catch`.
- **Interactive Console Dashboard** — Simple menu-driven interface for easy navigation.

## 🧱 Project Structure & Design

| Component | Description |
|---|---|
| `Report` | Abstract class (interface) that enforces a `showDetails()` contract. |
| `Person` | Base class holding shared attributes (`name`, `age`) and basic info display. |
| `Student` | Extends `Person` and implements `Report`; adds `regNo` and `marks` with validation. |
| `StudentManager` | Manages the collection of students using both a `List` (ordered storage) and a `Map` (fast lookup by `regNo`). |

### Class Relationships

```
Report (interface)
   ▲
   │ implements
Person ──extends──► Student
                        ▲
                        │ managed by
                  StudentManager
```

## 🚀 How to Run

```bash
dart run main.dart
```

## 📋 Usage

On launch, you'll see a dashboard with the following options:

```
---------- DASHBOARD ----------
1. Add Student
2. Show All Students
3. Search Student by RegNo
4. Sync With Server (async demo)
5. Exit
--------------------------------
```

### Example Session

```
Choose an option: 1
Enter name: John Doe
Enter age: 20
Enter RegNo: 101
Enter marks: 87.5
Student Added: John Doe(RegNo: 101)

Choose an option: 3
Enter RegNo to search: 101
name:  John Doe
Age : 20
RegNo: 101
Marks: 87.5

Choose an option: 4
Enter RegNo to sync: 101
connecting to server
Server sync complete for roll number 101
```

## ⚠️ Error Handling

- Entering invalid marks (outside 0–100) throws an `ArgumentError`.
- Searching for a non-existent `RegNo` throws an `Exception` with a clear message.
- Invalid numeric input (e.g., letters where a number is expected) is caught and reported without crashing the app.


# 🛠️ CRUD App – SwiftUI

A simple and clean CRUD (Create, Read, Update, Delete) application built with **SwiftUI**.  
This app demonstrates how to manage state, manipulate data, and persist changes using modern Apple frameworks.

---

## 🚀 Technologies Used

[![My Skills](https://skillicons.dev/icons?i=swift,git,github,xcode)](https://skillicons.dev)

- **Swift** – Programming language by Apple  
- **SwiftUI** – Declarative UI framework  
- **Foundation** – Core library for data and system management  
- **Git & GitHub** – Version control and hosting

---

## ✨ Features

- ➕ Add new items  
- 🔁 Update existing items  
- 🗑️ Delete items  
- 📃 List and view stored data  
- 💡 Intuitive SwiftUI-based interface

---

## 📱 Screenshots

<img width="405" alt="CRUD Screenshot 1" src="https://github.com/user-attachments/assets/f72a3bc9-3f6e-48c3-85dc-2df5f58bc49b" />

<img width="405" alt="CRUD Screenshot 2" src="https://github.com/user-attachments/assets/23f32ba8-7c6b-4edc-b09d-1c72ff23a725" />

<img width="405" alt="CRUD Screenshot 3" src="https://github.com/user-attachments/assets/92348e0f-b411-462b-9562-62203970bbb5" />

---

## 🧩 SwiftUI + Foundation Code Example

Here is a basic SwiftUI model using `Foundation` types for a CRUD task:

### Task Model

```swift
import Foundation

struct TaskItem: Identifiable, Codable {
    let id: UUID
    var title: String
    var createdAt: Date

    init(title: String) {
        self.id = UUID()
        self.title = title
        self.createdAt = Date()
    }
}

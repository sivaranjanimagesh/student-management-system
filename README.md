# 🎓 Student Management System

A full-stack web application to manage students with a beautiful UI.

---

## 🗂️ Project Structure

```
student-management-system/
├── frontend/
│   └── index.html          ← Open this in browser
├── backend/
│   ├── pom.xml
│   └── src/main/java/com/student/management/
│       ├── StudentManagementApplication.java
│       ├── controller/StudentController.java
│       ├── model/Student.java
│       ├── repository/StudentRepository.java
│       ├── service/StudentService.java
│       ├── config/CorsConfig.java
│       └── exception/GlobalExceptionHandler.java
└── database/
    └── schema.sql           ← Run this in MySQL first
```

---

## ⚙️ Tech Stack

| Layer    | Technology                          |
|----------|-------------------------------------|
| Frontend | HTML, CSS, JavaScript, Bootstrap 5  |
| Backend  | Java 17, Spring Boot 3.2            |
| Database | MySQL 8                             |

---

## 🚀 How to Run

### Step 1 — Database Setup
```sql
-- Open MySQL Workbench or terminal
mysql -u root -p
-- Then run:
source database/schema.sql
```

### Step 2 — Backend Setup
```bash
cd backend

# Update password in:
# src/main/resources/application.properties
# Change: spring.datasource.password=your_password_here

# Run the Spring Boot app
mvn spring-boot:run
```
Backend will start at: `http://localhost:8080`

### Step 3 — Frontend
Simply open `frontend/index.html` in your browser.

> **Note:** The frontend works in Demo Mode even without the backend running — it uses sample data so you can see the UI.

---

## 🌐 API Endpoints

| Method | Endpoint                          | Description          |
|--------|-----------------------------------|----------------------|
| GET    | `/api/students`                   | Get all students     |
| GET    | `/api/students/{id}`              | Get student by ID    |
| POST   | `/api/students`                   | Add new student      |
| PUT    | `/api/students/{id}`              | Update student       |
| DELETE | `/api/students/{id}`              | Delete student       |
| GET    | `/api/students/search?q=keyword`  | Search students      |
| GET    | `/api/students/department/{dept}` | Filter by department |
| GET    | `/api/students/status/{status}`   | Filter by status     |
| GET    | `/api/students/count`             | Get total count      |

---

## ✨ Features

- ✅ Add, Edit, Delete, View students
- ✅ Search by name, email, department
- ✅ Filter by department and status
- ✅ GPA progress bar visualization
- ✅ Department cards with images
- ✅ Stats dashboard (total, active, graduated)
- ✅ Student avatars with fallback initials
- ✅ Hero banner with real images
- ✅ Toast notifications
- ✅ Demo mode (works without backend)
- ✅ Responsive design (mobile-friendly)
- ✅ RESTful API with error handling

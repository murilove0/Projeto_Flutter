# 🩺 Clinic Appointment App

A cross-platform mobile application developed using **Flutter** with a backend powered by **C#**, **Entity Framework Core**, and **SQL Server**.

## 📲 Overview

This app allows users to request medical appointments and receive real-time notifications once a doctor schedules the consultation.

### 🔄 Basic Flow:

1. **User** submits a request for a consultation.
2. **Doctor** reviews the request and selects an available date.
3. The app **notifies** the user with the scheduled appointment time.

---

## 🛠️ Technologies Used

- **Flutter** (front-end mobile UI)
- **C# / .NET Core** (API backend)
- **Entity Framework Core** (ORM)
- **SQL Server** (database)
- **Firebase Cloud Messaging** (push notifications)

---

## 🚀 Features

- Patient appointment request interface
- Doctor's dashboard for consultation management
- Push notification when appointment is confirmed

---

## ⚙️ How to Run

### Backend:
- Open the solution in Visual Studio
- Update connection string for SQL Server
- Run migrations: `Update-Database`
- Start API project

### Frontend:
- Run `flutter pub get`
- Configure API URL
- Run with `flutter run`

---

## 📦 Future Improvements

- Authentication system for doctors and patients
- Calendar sync and appointment reminders
- Admin dashboard for clinic management

---

## 📄 License

MIT License

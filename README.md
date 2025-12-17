# Student-Management-CRUD-Project-ABAP-Cloud

## 📌 Project Overview

This project is a **Student Management System** developed using **SAP ABAP Cloud** in **Eclipse (ABAP Development Tools – ADT)**.

The application demonstrates **CRUD operations**:

* **Create** – Insert student data
* **Read** – Display student records
* **Update** – Modify student information
* **Delete** – Remove student records

All operations are executed using an **ABAP console-based executable class**.

---

## 🛠️ Technologies Used

* **SAP BTP (Business Technology Platform) – Trial**
* **ABAP Cloud Environment**
* **Eclipse IDE**
* **ABAP Development Tools (ADT)**
* **Open SQL**
* **GitHub** (for version control)

---

## 📂 Project Structure

```
ABAP Cloud Project
│
├── Package
│   └── ZPKG_STUDENT_MGMT
│
├── Database Table
│   └── ZSTUDENT
│
└── ABAP Class
    └── ZCL_STUDENT_CLASS
```

---

## 🧩 Step-by-Step Development Process

---

## ✅ Step 1: SAP BTP Account Setup

1. Created **SAP BTP Trial Account**
2. Created **ABAP Environment (Trial)**
3. Generated **Service Key** for Eclipse connection

---

## ✅ Step 2: Eclipse & ADT Setup

1. Installed **Eclipse IDE**
2. Installed **ABAP Development Tools (ADT)** plugin
3. Connected Eclipse to **ABAP Cloud** using service key and browser-based authentication

---

## ✅ Step 3: ABAP Cloud Project Creation

* Created a new **ABAP Cloud Project** in Eclipse
* Connected to ABAP system (Client: 100, Language: EN)

---

## ✅ Step 4: Package Creation

Created a custom development package:

```
ZPKG_STUDENT_MGMT
```

Purpose:
To store all student-related ABAP objects.

---

## ✅ Step 5: Database Table Creation

### Table Name: `ZSTUDENT`

Created using **ABAP Cloud Data Definition (DDL)**.

### Table Structure:

| Field Name | Type     | Description      |
| ---------- | -------- | ---------------- |
| CLIENT     | CLNT     | Client (Key)     |
| STUD_ID    | NUMC(5)  | Student ID (Key) |
| NAME       | CHAR(40) | Student Name     |
| DEPT       | CHAR(20) | Department       |
| AGE        | INT4     | Age              |

### Table Activation:

* Saved and activated using **Ctrl + F3**
* Tables are **not executed**, only activated

---

## ✅ Step 6: ABAP CRUD Class Creation

### Class Name:

```
ZCL_STUDENT_CLASS
```

### Interface Used:

```
IF_OO_ADT_CLASSRUN
```

Purpose:
To execute ABAP code using **ABAP Console**.

---

## ✅ Step 7: CRUD Operations Implementation

Each CRUD operation was tested **one by one** to avoid errors.

---

### 🔹 CREATE (Insert Student)

```abap
INSERT zstudent FROM VALUE #(
  client  = sy-mandt
  stud_id = '00001'
  name    = 'Sindhu'
  dept    = 'CSE'
  age     = 22
).
```

---

### 🔹 READ (Display Students)

```abap
DATA lt_students TYPE STANDARD TABLE OF zstudent.

SELECT *
  FROM zstudent
  INTO TABLE @lt_students
  WHERE client = @sy-mandt.

out->write( lt_students ).
```

---

### 🔹 UPDATE (Modify Student)

```abap
UPDATE zstudent
  SET age = 23
  WHERE stud_id = '00001'
    AND client  = sy-mandt.
```

---

### 🔹 DELETE (Remove Student)

```abap
DELETE FROM zstudent
  WHERE stud_id = '00001'
    AND client  = sy-mandt.
```

---

## ▶️ Program Execution

* Activated the class using **Ctrl + F3**
* Executed using:

  ```
  Run As → ABAP Application (Console)
  ```
* Output displayed in **ABAP Console**

---

## 🧠 Key ABAP Cloud Concepts Learned

* ABAP Cloud project setup using SAP BTP
* Client-dependent table handling (`sy-mandt`)
* ABAP DDL table creation
* CRUD operations using Open SQL
* Executable ABAP classes using `IF_OO_ADT_CLASSRUN`
* Eclipse ADT development workflow

---


Just tell me 👍

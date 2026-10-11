# ID-Checker

A Java-based employee identification and ID verification system built using Java EE, JSP, Servlets, JPA, and Apache Derby. The project allows employees to enter their details, validate ID numbers, and store verification records associated with each employee.

## Overview

This repository contains two main Java application modules:

- `IDEJB` — backend and persistence layer
- `IDWebApplcation` — web front-end using JSP and servlets
- `Database` — Derby database files used by the application

## Features

- Employee data management
- South African-style ID validation
- Persistence using JPA entities
- Java EE web application flow
- JSP-based UI pages
- Embedded Derby database storage

## Project Structure

```text
ID-Checker/
├── Database/
│   └── DHA_DB/
├── IDEJB/
│   ├── src/java/za/ac/tut/bl/
│   ├── src/java/za/ac/tut/entities/
│   ├── build.xml
│   └── nbproject/
├── IDWebApplcation/
│   ├── src/java/za/ac/tut/web/
│   ├── web/
│   ├── build.xml
│   └── nbproject/
├── README.md
└── .gitignore
```

## Tech Stack

- Java
- Java EE
- Servlets
- JSP
- JPA / Persistence API
- EJB
- Apache Derby
- NetBeans
- Ant

## Core Components

### Entities

The application uses entity classes to represent data:

- `Employee` — stores employee ID and username
- `ID` — stores a validated ID, creation timestamp, and associated employee

### Business Layer

The backend under `IDEJB/src/java/za/ac/tut/bl/` contains façade classes used to manage and persist data.

### Web Layer

The web application under `IDWebApplcation/src/java/za/ac/tut/web/` handles request processing, including:

- employee detail submission
- ID verification
- login/logout flows
- record display pages

## ID Validation

The validation logic checks whether the entered ID:

- is exactly 13 characters long
- contains only numeric digits
- passes the checksum validation used by the project

If valid, the ID record is saved and linked to the employee.

## Prerequisites

Before running the project, ensure that you have:

- JDK installed
- NetBeans or another Java EE-compatible IDE
- GlassFish or another Java EE server
- Ant installed

## Running the Project

### Option 1: NetBeans

1. Open the project in NetBeans.
2. Open the `IDWebApplcation` project.
3. Configure a Java EE server such as GlassFish.
4. Build and deploy the web application.
5. Access it through the configured server.

### Option 2: Command Line

```bash
cd IDEJB
ant build

cd ../IDWebApplcation
ant build
```

Then deploy the generated WAR file to your Java EE container.

## Database

The application uses a local Derby database stored in:

- `Database/DHA_DB`

This database contains the persisted employee and verification records.



## Author

Repository owner: `Mister-MeToo`

<p align="center">
  <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java"/>
  <img src="https://img.shields.io/badge/Servlet-007396?style=for-the-badge&logo=java&logoColor=white" alt="Servlet"/>
  <img src="https://img.shields.io/badge/JSP-323330?style=for-the-badge&logo=java&logoColor=F7DF1E" alt="JSP"/>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white" alt="Bootstrap"/>
  <img src="https://img.shields.io/badge/Tomcat_9-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black" alt="Tomcat"/>
</p>

<h1 align="center">🏆 Winners Sports Academy</h1>

<p align="center">
  <strong>A full-stack Java web application for managing sports academy operations — including member registration, admin dashboards, event management, feedback collection, and sport-specific training content.</strong>
</p>

<p align="center">
  <a href="#-features">Features</a> •
  <a href="#-architecture">Architecture</a> •
  <a href="#-tech-stack">Tech Stack</a> •
  <a href="#-project-structure">Structure</a> •
  <a href="#-getting-started">Setup</a> •
  <a href="#-screenshots">Screenshots</a> •
  <a href="#-license">License</a>
</p>

---

## 📋 Overview

**Winners Sports Academy** is a comprehensive sports academy management system built with **Java Servlets**, **JSP**, and **MySQL**. It features a modern, responsive UI powered by a custom CSS design system with a dark navy and gold theme, glassmorphism effects, and smooth animations.

The application supports two user roles — **Admin** and **Member** — each with dedicated dashboards, navigation, and functionality. It handles member registration, profile management, event scheduling, sport details cataloging, notice boards, feedback systems, and contact form submissions.

---

## ✨ Features

### 🔐 Authentication & Authorization
- Secure **Admin** and **Member** login portals
- Session-based authentication with role validation
- Cookie-based "Remember Me" functionality for members
- Automatic redirect for unauthorized access attempts
- Cache-control headers to prevent back-button access after logout

### 👤 Member Portal
- **Self-service Registration** with multi-sport selection and gender options
- **Profile Dashboard** displaying personalized member information
- **Edit Profile** with form pre-population from database
- **Feedback Submission** with star ratings and remarks
- Dedicated member navigation with role-specific routes

### 🛡️ Admin Panel
- **Admin Dashboard** with quick-access management cards
- **Member Management** — View all registered members in responsive tables
- **Event Management** — Add and view upcoming events
- **Sport Details** — Add sports with fee structures, duration, and payment modes
- **Notice Board** — Create and display notices to members
- **Contact & Feedback Logs** — View all submitted contacts and feedback
- **JSTL Views** — Alternative data views using JSTL + SQL tag libraries

### 🎨 Modern UI/UX
- **Custom Design System** (`academy.css`) with CSS variables and reusable components
- **Dark Navy (#0a0e27) + Gold (#f0c040)** cohesive color palette
- **Glassmorphism** effects on cards, navbar, and forms
- **Google Fonts** (Inter + Outfit) for premium typography
- **Responsive CSS Grid** layouts for all data views
- **Staggered entry animations** for visual polish
- **CSS-animated notice ticker** (replaces deprecated `<marquee>`)
- **Custom scrollbar** styling
- **Hero sections** with image overlays for sport pages

### 🏅 Sport Pages
- Individual pages for **Cricket, Football, Basketball, Badminton, Hockey, Golf, Swimming, Table Tennis, Weight Lifting**
- Embedded **YouTube training videos** in responsive grids
- Sport descriptions with animated content cards

### 🏢 Facility Pages
- **Cafeteria, Fitness Club, Equipment Shop, Coach** showcase pages
- Image galleries with hover animations

---

## 🏗 Architecture

### High-Level System Architecture

```mermaid
graph TB
    subgraph Client["🌐 Client Browser"]
        UI["HTML/CSS/JS<br/>Bootstrap 5.3.3<br/>Font Awesome 5.15.4"]
    end

    subgraph Server["🖥️ Apache Tomcat 9.0.64"]
        subgraph Presentation["Presentation Layer"]
            JSP["JSP Pages<br/>(Views)"]
            CSS["Design System<br/>(academy.css)"]
            JS["JavaScript<br/>(Validation/Clock)"]
        end

        subgraph Business["Business Logic Layer"]
            SERVLET["Java Servlets<br/>(Controllers)"]
            BEANS["JavaBeans<br/>(Models)"]
        end

        subgraph Data["Data Access Layer"]
            DAO["DAO Classes<br/>(Data Access Objects)"]
            DBINFO["DB Config<br/>(database_info.properties)"]
        end
    end

    subgraph Database["🗄️ MySQL Database"]
        TABLES["Tables:<br/>members, events,<br/>sports, notices,<br/>feedback, contact"]
    end

    UI -->|HTTP Request| JSP
    JSP -->|Include| CSS
    JSP -->|Include| JS
    JSP -->|Forward/Redirect| SERVLET
    SERVLET -->|Uses| BEANS
    SERVLET -->|Queries| DAO
    DAO -->|JDBC| DBINFO
    DBINFO -->|Connection| Database
    SERVLET -->|Response| JSP
    JSP -->|HTTP Response| UI

    style Client fill:#0a0e27,stroke:#f0c040,color:#fff
    style Server fill:#111633,stroke:#f0c040,color:#fff
    style Database fill:#1a1f4e,stroke:#f0c040,color:#fff
```

### MVC Pattern Flow

```mermaid
sequenceDiagram
    participant B as 🌐 Browser
    participant J as 📄 JSP (View)
    participant S as ⚙️ Servlet (Controller)
    participant D as 🗃️ DAO (Model)
    participant DB as 🗄️ MySQL

    B->>J: User navigates to page
    J->>S: Form submission / Action
    S->>D: Business logic call
    D->>DB: SQL Query (JDBC)
    DB-->>D: ResultSet
    D-->>S: Java Objects
    S-->>J: Forward with attributes
    J-->>B: Rendered HTML response
```

### User Role Access Flow

```mermaid
flowchart LR
    A["🌐 User"] --> B{Login Page}
    B -->|Admin Credentials| C["🛡️ Admin Session"]
    B -->|Member Credentials| D["👤 Member Session"]

    C --> E["Admin Dashboard"]
    E --> F["Manage Members"]
    E --> G["Manage Events"]
    E --> H["Manage Sports"]
    E --> I["Manage Notices"]
    E --> J["View Feedback"]
    E --> K["View Contacts"]

    D --> L["Member Home"]
    L --> M["View Profile"]
    L --> N["Edit Profile"]
    L --> O["Submit Feedback"]

    style C fill:#f0c040,stroke:#0a0e27,color:#000
    style D fill:#2563eb,stroke:#0a0e27,color:#fff
```

---

## 🛠 Tech Stack

| Layer | Technology | Version |
|-------|-----------|---------|
| **Language** | Java | 8+ |
| **Server** | Apache Tomcat | 9.0.64 |
| **Views** | JSP + JSTL | 1.2 |
| **Database** | MySQL | 8.x |
| **DB Connector** | MySQL Connector/J | 8.4.0 |
| **CSS Framework** | Bootstrap | 5.3.3 |
| **Icons** | Font Awesome | 5.15.4 |
| **Fonts** | Google Fonts | Inter, Outfit |
| **Design System** | Custom CSS | academy.css |

---

## 📁 Project Structure

```
SportsAcademy/
├── 📁 WEB-INF/
│   ├── web.xml                          # Deployment descriptor
│   ├── 📁 classes/academy/
│   │   ├── 📁 admin/                    # Admin Servlets
│   │   ├── 📁 member/                   # Member Servlets
│   │   ├── 📁 dao/                      # Data Access Objects
│   │   ├── 📁 beans/                    # JavaBean models
│   │   ├── 📁 common/                   # Shared utilities
│   │   └── 📁 dbinfo/                   # DB configuration
│   └── 📁 lib/
│       ├── jstl-1.2.jar                 # JSTL tag library
│       └── mysql-connector-j-8.4.0.jar  # MySQL JDBC driver
│
├── 📁 jsp/                              # Public-facing pages
│   ├── index.jsp                        # 🏠 Homepage (landing)
│   ├── aboutUs.jsp                      # ℹ️ About page
│   ├── Facilities.jsp                   # 🏢 Facilities overview
│   ├── Upcomingevent.jsp                # 📅 Events listing
│   ├── SportDetails.jsp                 # 🏅 Sports catalog
│   ├── football.jsp                     # ⚽ Football page
│   ├── cricket.jsp                      # 🏏 Cricket page
│   ├── basketball.jsp                   # 🏀 Basketball page
│   ├── badminton.jsp                    # 🏸 Badminton page
│   ├── hockey.jsp                       # 🏒 Hockey page
│   ├── golf.jsp                         # ⛳ Golf page
│   ├── swimming.jsp                     # 🏊 Swimming page
│   ├── weight-lifting.jsp               # 🏋️ Weight Lifting page
│   └── table tennis.jsp                 # 🏓 Table Tennis page
│
├── 📁 admin/                            # Admin panel pages
│   ├── admin-login.jsp                  # 🔑 Admin login
│   ├── admin_home.jsp                   # 📊 Admin dashboard
│   ├── Admin_header.html                # 🧭 Admin navbar
│   ├── add_event.jsp                    # ➕ Add event form
│   ├── sportdetails_add.jsp             # ➕ Add sport form
│   ├── Notice_add.jsp                   # ➕ Add notice form
│   ├── All-members.jsp                  # 👥 Members list
│   ├── view_event.jsp                   # 📋 Events table
│   ├── view_sport_details.jsp           # 📋 Sports table
│   ├── viewnotice.jsp                   # 📋 Notices list
│   ├── all-feedback.jsp                 # 💬 Feedback list
│   ├── all-contacts.jsp                 # 📞 Contacts table
│   ├── viewFeedback_JSTL.jsp            # 💬 JSTL feedback view
│   └── viewcontact_jstl.jsp             # 📞 JSTL contacts view
│
├── 📁 member/                           # Member portal pages
│   ├── member-login.jsp                 # 🔑 Member login
│   ├── member_home.jsp                  # 🏠 Member dashboard
│   ├── Member_header.html               # 🧭 Member navbar
│   ├── Registration.jsp                 # 📝 Registration form
│   ├── member_edit_profile.jsp          # ✏️ Edit profile
│   └── member-feedback.jsp              # ⭐ Feedback form
│
├── 📁 common_files/                     # Shared components
│   ├── common_css.html                  # 📦 CSS/JS imports
│   ├── common_header.html               # 🧭 Main navbar
│   └── Common_footer.html               # 📌 Footer
│
├── 📁 css/
│   └── academy.css                      # 🎨 Design system (600+ lines)
│
├── 📁 Java-script/
│   └── time.html                        # ⏰ Live clock widget
│
├── 📁 images/                           # Static images
└── 📁 videos/                           # Static videos
```

---

## 🚀 Getting Started

### Prerequisites

| Software | Version | Download |
|----------|---------|----------|
| Java JDK | 8 or higher | [Oracle JDK](https://www.oracle.com/java/technologies/downloads/) |
| Apache Tomcat | 9.x | [Tomcat Downloads](https://tomcat.apache.org/download-90.cgi) |
| MySQL Server | 8.x | [MySQL Downloads](https://dev.mysql.com/downloads/) |

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/SportsAcademy.git
   ```

2. **Set up MySQL Database**
   ```sql
   CREATE DATABASE sports_academy;
   USE sports_academy;

   -- Create required tables
   CREATE TABLE members (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100),
     email VARCHAR(100) UNIQUE,
     password VARCHAR(255),
     phone VARCHAR(15),
     gender VARCHAR(10),
     sports VARCHAR(255),
     address TEXT,
     role VARCHAR(20) DEFAULT 'member'
   );

   CREATE TABLE events (
     id INT AUTO_INCREMENT PRIMARY KEY,
     event_name VARCHAR(200),
     event_date DATE,
     event_details TEXT
   );

   CREATE TABLE sports (
     id INT AUTO_INCREMENT PRIMARY KEY,
     sport_name VARCHAR(100),
     fee DECIMAL(10,2),
     duration VARCHAR(50),
     payment_mode VARCHAR(50),
     details TEXT
   );

   CREATE TABLE notices (
     id INT AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(200),
     description TEXT,
     date DATE
   );

   CREATE TABLE feedback (
     id INT AUTO_INCREMENT PRIMARY KEY,
     Name VARCHAR(100),
     email VARCHAR(100),
     rating INT,
     remarks TEXT,
     date DATE
   );

   CREATE TABLE contact (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100),
     last_name VARCHAR(100),
     email VARCHAR(100),
     phone VARCHAR(15),
     question TEXT
   );
   ```

3. **Configure Database Connection**

   Edit `WEB-INF/classes/academy/dbinfo/database_info.properties`:
   ```properties
   url=jdbc:mysql://localhost:3306/sports_academy
   username=your_username
   password=your_password
   ```

4. **Deploy to Tomcat**
   ```bash
   # Copy the SportsAcademy folder to Tomcat's webapps directory
   cp -r SportsAcademy/ /path/to/tomcat/webapps/
   ```

5. **Start Tomcat**
   ```bash
   # Linux/macOS
   ./bin/startup.sh

   # Windows
   bin\startup.bat
   ```

6. **Access the application**
   ```
   http://localhost:8080/SportsAcademy/
   ```

---

## 🗄️ Database Schema

```mermaid
erDiagram
    MEMBERS {
        int id PK
        varchar name
        varchar email UK
        varchar password
        varchar phone
        varchar gender
        varchar sports
        text address
        varchar role
    }

    EVENTS {
        int id PK
        varchar event_name
        date event_date
        text event_details
    }

    SPORTS {
        int id PK
        varchar sport_name
        decimal fee
        varchar duration
        varchar payment_mode
        text details
    }

    NOTICES {
        int id PK
        varchar title
        text description
        date date
    }

    FEEDBACK {
        int id PK
        varchar Name
        varchar email
        int rating
        text remarks
        date date
    }

    CONTACT {
        int id PK
        varchar name
        varchar last_name
        varchar email
        varchar phone
        text question
    }

    MEMBERS ||--o{ FEEDBACK : "submits"
    MEMBERS ||--o{ CONTACT : "sends"
```

---

## 🎨 Design System

The project uses a fully custom design system defined in `css/academy.css` with **600+ lines** of CSS:

| Token | Value | Usage |
|-------|-------|-------|
| `--bg-primary` | `#0a0e27` | Page backgrounds |
| `--bg-secondary` | `#111633` | Card & section backgrounds |
| `--accent-gold` | `#f0c040` | Headings, borders, accents |
| `--accent-blue` | `#2563eb` | Links, interactive elements |
| `--text-primary` | `#e8e8f0` | Body text |
| `--glass-bg` | `rgba(17,22,51,0.7)` | Glassmorphism effect |
| `--font-primary` | `'Inter'` | Body typography |
| `--font-display` | `'Outfit'` | Headings typography |

### Component Library
- `.sa-card` — Glass-effect content cards
- `.sa-table-wrap` — Responsive dark-themed tables
- `.sa-auth-card` — Login/registration forms
- `.sa-section-title` — Gold-accented section headers
- `.sa-data-card` — Data display cards with animations
- `.sa-ticker` — CSS-animated notice ticker
- `.sa-navbar` — Glassmorphism sticky navigation

---

## 🔒 Security Features

- ✅ Session-based authentication for Admin & Member areas
- ✅ Role validation before page rendering
- ✅ Safe string comparisons (`"admin".equals(role)` pattern)
- ✅ Null-safe cookie handling
- ✅ Cache-control headers to prevent post-logout access
- ✅ Context-path prefixed redirects (`/SportsAcademy/...`)
- ✅ JSTL `<c:out>` for XSS-safe output rendering

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- [Bootstrap 5](https://getbootstrap.com/) — CSS framework
- [Font Awesome](https://fontawesome.com/) — Icon library
- [Google Fonts](https://fonts.google.com/) — Inter & Outfit typefaces
- [Apache Tomcat](https://tomcat.apache.org/) — Servlet container
- [MySQL](https://www.mysql.com/) — Database engine

---

<p align="center">
  Made with ❤️ for sports enthusiasts
</p>

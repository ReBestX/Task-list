<div align="center">

<img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="380" alt="Laravel Logo" />

# Task List

**A clean, full-featured task management web application built with Laravel 10.**

Track your tasks, mark them complete, edit details, and manage everything through a fast, minimal UI — no account required.

---

[![PHP](https://img.shields.io/badge/PHP-8.1+-777BB4?logo=php&logoColor=white)](https://php.net)
[![Laravel](https://img.shields.io/badge/Laravel-10.x-FF2D20?logo=laravel&logoColor=white)](https://laravel.com)
[![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?logo=mysql&logoColor=white)](https://mysql.com)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-3.x-38B2AC?logo=tailwind-css&logoColor=white)](https://tailwindcss.com)
[![Alpine.js](https://img.shields.io/badge/Alpine.js-3.x-8BC0D0?logo=alpine.js&logoColor=black)](https://alpinejs.dev)
[![Vite](https://img.shields.io/badge/Vite-4.x-646CFF?logo=vite&logoColor=white)](https://vitejs.dev)
[![License](https://img.shields.io/badge/license-MIT-22c55e)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/aymanbismail/Task-list)](https://github.com/aymanbismail/Task-list/commits/main)
[![Issues](https://img.shields.io/github/issues/aymanbismail/Task-list)](https://github.com/aymanbismail/Task-list/issues)

</div>

---

## Table of Contents

- [Demo](#-live-project-demonstration)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Architecture](#-architecture)
- [Folder Structure](#-folder-structure)
- [Installation](#-installation)
- [Environment Variables](#-environment-variables)
- [Running Locally](#-running-locally)
- [Production Build](#-production-build)
- [Deployment](#-deployment)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Author](#-author)
- [License](#-license)
- [Acknowledgements](#-acknowledgements)

---

## 🎥 Live Project Demonstration

This demo showcases the core features and user experience of the Task List application, including task creation, management, completion toggling, and real-time UI feedback.

<div align="center">

https://github.com/user-attachments/assets/b2911f7e-b3e7-4f2d-9e29-e61c43f31f68

</div>

---

## ✨ Features

- **Create tasks** — add a title and description with instant server-side validation
- **Browse tasks** — paginated list (10 per page) with completion status shown inline via strikethrough
- **View task details** — see full title, description, human-readable timestamps, and completion status
- **Edit tasks** — update title or description at any time
- **Delete tasks** — remove a task permanently with a single click
- **Toggle completion** — mark any task as complete or revert it back to pending
- **Flash notifications** — dismissible success banners powered by Alpine.js
- **Responsive layout** — works on desktop and mobile via Tailwind CSS utility classes
- **CSRF protection** — all state-mutating routes are protected out of the box

---

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Language | PHP 8.1+ |
| Framework | Laravel 10 |
| Database | MySQL / MariaDB |
| Templating | Blade |
| CSS | Tailwind CSS 3 (CDN) |
| JS Interactivity | Alpine.js 3 (CDN) |
| Icons | Font Awesome 6.4 (CDN) |
| Asset Pipeline | Vite 4 + laravel-vite-plugin |
| HTTP Client | Axios 1.x |
| Testing | PHPUnit 10 |
| Code Style | Laravel Pint, StyleCI |
| Dev Tooling | Laravel Sail, Laravel Tinker, Faker |

---

## 🏗 Architecture

The application follows Laravel's standard **MVC pattern**:

```
HTTP Request
    │
    ▼
routes/web.php          ← defines all URL → controller method mappings
    │
    ▼
TaskController.php      ← handles request logic, validation, model interaction
    │
    ▼
Task (Eloquent Model)   ← maps to the `tasks` MySQL table
    │
    ▼
Blade Views             ← renders HTML (layouts/app.blade.php + tasks/*.blade.php)
    │
    ▼
HTTP Response
```

There is **no authentication layer** — the application is fully public. Tailwind CSS is loaded via CDN at runtime, and Alpine.js handles the dismissible flash message without a separate build step.

---

## 📁 Folder Structure

```
Task-list/
├── .github/
│   └── workflows/
│       ├── issues.yml              # Auto-label GitHub issues
│       ├── pull-requests.yml       # PR automation
│       ├── tests.yml               # CI: PHPUnit on PHP 8.1 & 8.2
│       └── update-changelog.yml    # Changelog update on release
│
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   │   └── TaskController.php  # CRUD + toggle completion
│   │   └── Middleware/             # Standard Laravel middleware
│   ├── Models/
│   │   └── Task.php                # Eloquent model (title, description, completed)
│   └── Providers/                  # Standard Laravel service providers
│
├── database/
│   ├── factories/
│   │   └── TaskFactory.php         # Faker-based factory for seeding
│   ├── migrations/
│   │   └── 2023_08_30_..._create_tasks_table.php
│   └── seeders/
│       └── DatabaseSeeder.php      # Seeds 20 fake tasks
│
├── mySQL database/
│   ├── tasks.json                  # Sample data export (JSON)
│   └── tasks.sql                   # Sample data export (SQL dump)
│
├── resources/
│   ├── css/app.css                 # CSS entrypoint (Vite)
│   ├── js/
│   │   ├── app.js                  # JS entrypoint (Vite)
│   │   └── bootstrap.js            # Axios setup
│   └── views/
│       ├── layouts/
│       │   └── app.blade.php       # Master layout (Tailwind, Alpine.js, FA icons)
│       └── tasks/
│           ├── index.blade.php     # Task list with pagination
│           ├── create.blade.php    # Create task form
│           ├── edit.blade.php      # Edit task form
│           └── show.blade.php      # Task detail view
│
├── routes/
│   ├── web.php                     # All application routes
│   └── api.php                     # Default Sanctum stub (unused)
│
├── tests/
│   ├── Feature/ExampleTest.php     # Smoke test: root redirects to /tasks
│   └── Unit/ExampleTest.php        # Placeholder unit test
│
├── .env.example                    # Environment variable template
├── composer.json                   # PHP dependencies
├── package.json                    # Node.js dependencies
├── phpunit.xml                     # PHPUnit configuration
├── vite.config.js                  # Vite asset bundler config
└── README.md
```

---

## 🚀 Installation

### Prerequisites

| Requirement | Version |
|---|---|
| PHP | 8.1 or higher |
| Composer | 2.x |
| Node.js | 16+ |
| npm | 8+ |
| MySQL / MariaDB | 8.0+ / 10.4+ |

### Steps

**1. Clone the repository**

```bash
git clone https://github.com/aymanbismail/Task-list.git
cd Task-list
```

**2. Install PHP dependencies**

```bash
composer install
```

**3. Install Node.js dependencies**

```bash
npm install
```

**4. Set up environment file**

```bash
cp .env.example .env
```

**5. Generate application key**

```bash
php artisan key:generate
```

**6. Create the database**

Create a MySQL database (e.g. `laravel_tasks`) and update `.env` with your credentials (see [Environment Variables](#-environment-variables)).

**7. Run migrations**

```bash
php artisan migrate
```

**8. (Optional) Seed sample data**

Seeds 20 randomly-generated tasks using the TaskFactory:

```bash
php artisan db:seed
```

---

## 🔐 Environment Variables

Copy `.env.example` to `.env` and configure the values below. Only the database and app settings are required for this project.

| Variable | Default | Required | Description |
|---|---|---|---|
| `APP_NAME` | `Laravel` | Yes | Application display name |
| `APP_ENV` | `local` | Yes | `local`, `production`, `testing` |
| `APP_KEY` | — | Yes | Generated by `php artisan key:generate` |
| `APP_DEBUG` | `true` | Yes | Set to `false` in production |
| `APP_URL` | `http://localhost` | Yes | Public URL of your application |
| `DB_CONNECTION` | `mysql` | Yes | Database driver |
| `DB_HOST` | `127.0.0.1` | Yes | Database host |
| `DB_PORT` | `3306` | Yes | Database port |
| `DB_DATABASE` | `laravel` | Yes | Database name |
| `DB_USERNAME` | `root` | Yes | Database username |
| `DB_PASSWORD` | — | Yes | Database password |
| `SESSION_DRIVER` | `file` | No | Session storage driver |
| `CACHE_DRIVER` | `file` | No | Cache storage driver |
| `LOG_CHANNEL` | `stack` | No | Logging channel |

> The Pusher, Redis, Mail, and AWS variables in `.env.example` are Laravel skeleton defaults and are **not used** by this application.

---

## 💻 Running Locally

Start the Vite development server and the Laravel development server in two terminals:

**Terminal 1 — Laravel**

```bash
php artisan serve
```

The application will be available at [http://localhost:8000](http://localhost:8000).

**Terminal 2 — Vite (asset hot-reload)**

```bash
npm run dev
```

> **Note:** Tailwind CSS, Alpine.js, and Font Awesome are loaded from CDN in the Blade layout, so the frontend works immediately without the Vite build step. The Vite dev server is optional for local development.

---

## 📦 Production Build

Compile and version frontend assets for production:

```bash
npm run build
```

Then optimise the Laravel application:

```bash
composer install --optimize-autoloader --no-dev
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

---

## 🌐 Deployment

### Shared Hosting / VPS

1. Upload all files to your server (exclude `node_modules/` and `vendor/`).
2. Run `composer install --optimize-autoloader --no-dev` on the server.
3. Run `npm run build` locally and upload the generated `public/build/` directory.
4. Set the web root to the `public/` directory.
5. Copy `.env.example` to `.env`, fill in production values, and run:

```bash
php artisan key:generate
php artisan migrate --force
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

6. Ensure `storage/` and `bootstrap/cache/` are writable by the web server:

```bash
chmod -R 775 storage bootstrap/cache
```

### Laravel Sail (Docker)

Laravel Sail is included as a dev dependency for Docker-based development:

```bash
./vendor/bin/sail up -d
./vendor/bin/sail artisan migrate
```

---

## 📖 Usage

| Action | URL | Method |
|---|---|---|
| View all tasks | `/tasks` | GET |
| Create new task | `/tasks/create` | GET |
| Submit new task | `/tasks` | POST |
| View task detail | `/tasks/{id}` | GET |
| Edit task form | `/tasks/{id}/edit` | GET |
| Update task | `/tasks/{id}/edit` | PUT |
| Toggle completion | `/tasks/{id}/toggle-complete` | PUT |
| Delete task | `/tasks/{id}/delete` | DELETE |

### Workflow

1. Navigate to **`/tasks`** to see your task list.
2. Click **"Add Task!"** to open the create form.
3. Fill in a **title** (required, max 255 chars) and **description** (required), then submit.
4. From the task detail view, use the **"Mark as completed"** button to toggle status, **Edit** to modify, or **Delete** to remove.
5. The list shows tasks paginated at 10 per page; completed tasks appear with a strikethrough.

---

## 🗄 Database Schema

**Table: `tasks`**

| Column | Type | Constraints | Default |
|---|---|---|---|
| `id` | `bigint unsigned` | PRIMARY KEY, AUTO_INCREMENT | — |
| `title` | `varchar(255)` | NOT NULL | — |
| `description` | `text` | NOT NULL | — |
| `completed` | `tinyint(1)` | NOT NULL | `0` |
| `created_at` | `timestamp` | NULL | NULL |
| `updated_at` | `timestamp` | NULL | NULL |

A sample SQL dump with demo data is included at [`mySQL database/tasks.sql`](mySQL%20database/tasks.sql).

---

## 🧪 Testing

Run the PHPUnit test suite:

```bash
php artisan test
```

Or directly via PHPUnit:

```bash
vendor/bin/phpunit
```

The CI pipeline (`.github/workflows/tests.yml`) runs tests automatically on every push to `main` and on all pull requests, against PHP 8.1 and 8.2.

> **Note:** Tests require a live MySQL connection. The SQLite in-memory option in `phpunit.xml` is available but disabled by default — uncomment those lines if you prefer an isolated test database.

---

## 🔒 Security

- **CSRF protection** is enabled on all `POST`, `PUT`, and `DELETE` routes via Laravel's `VerifyCsrfToken` middleware.
- **Mass assignment** is restricted on the `Task` model via `$fillable`.
- **Input validation** is enforced in `TaskController` before any database write (`title` required/max 255, `description` required).
- **SQL injection** is prevented by Eloquent's parameterised query binding.
- Set `APP_DEBUG=false` and `APP_ENV=production` before deploying to prevent stack traces from being exposed to end users.

---

## ⚡ Performance

- Tasks are **paginated** (10 per page) so large datasets don't cause full-table renders.
- Laravel's **route caching** (`php artisan route:cache`) eliminates route compilation on every request in production.
- **View caching** (`php artisan view:cache`) pre-compiles Blade templates.
- **Autoloader optimisation** (`composer install --optimize-autoloader`) speeds up class resolution.
- Tailwind CSS is loaded from CDN for development simplicity; in a production-hardened setup, swap to the Vite-compiled bundle to enable tree-shaking and eliminate the CDN dependency.

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork** the repository
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Commit your changes** with a clear message
   ```bash
   git commit -m "feat: add your feature description"
   ```
4. **Push** to your fork
   ```bash
   git push origin feature/your-feature-name
   ```
5. **Open a Pull Request** against the `main` branch

### Guidelines

- Follow the existing code style (PSR-12 / Laravel conventions via Laravel Pint)
- Keep commits focused and atomic
- Write or update tests for any changed behaviour
- Do not break existing functionality

---

## 👤 Author

**Ayman Ismail**

- Portfolio: [aymanismail.com](https://aymanismail.com)
- GitHub: [@aymanbismail](https://github.com/aymanbismail)
- LinkedIn: [linkedin.com/in/aymanbismail](https://linkedin.com/in/aymanbismail)

---

## 📄 License

This project is open-source software licensed under the [MIT License](https://opensource.org/licenses/MIT).

---

## 🙏 Acknowledgements

- [Laravel](https://laravel.com) — the PHP framework that powers this application
- [Tailwind CSS](https://tailwindcss.com) — utility-first CSS framework
- [Alpine.js](https://alpinejs.dev) — lightweight JS for flash message dismissal
- [Font Awesome](https://fontawesome.com) — icon library (back-arrow and other UI icons)
- [Vite](https://vitejs.dev) — fast frontend build tooling
- [Laravel Sail](https://laravel.com/docs/sail) — Docker-based development environment
- [PHPUnit](https://phpunit.de) — PHP testing framework

---

<div align="center">

Made with ❤️ by [Ayman Ismail](https://github.com/aymanbismail)

</div>

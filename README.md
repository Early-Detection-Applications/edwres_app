# Edwres App

Flutter base project menggunakan:

* Clean Architecture
* BLoC
* Dio
* GoRouter
* GetIt + Injectable
* Freezed & Json Serializable
* Flavor & Environment Configuration

---

## Project Structure

```text
lib/
│
├── app/
│   ├── router/
│   └── theme/
│
├── core/
│   ├── config/
│   ├── network/
│   ├── error/
│   ├── storage/
│   └── utils/
│
├── features/
│   └── feature_name/
│       ├── data/
│       ├── domain/
│       └── presentation/
│
├── injection/
│
├── bootstrap.dart
├── main_dev.dart
├── main_staging.dart
└── main_prod.dart
```

---

## Architecture

Project menggunakan **Feature First Clean Architecture**.

### Data Layer

Bertanggung jawab untuk:

* API Call
* Local Storage
* Model Mapping

### Domain Layer

Berisi:

* Entity
* Repository Contract
* Use Case

### Presentation Layer

Berisi:

* UI
* BLoC
* Navigation

---

## Environment

Project mendukung 3 environment:

```text
.env.dev
.env.staging
.env.prod
```

Contoh:

```env
APP_NAME=Eder Dev
BASE_URL=https://api-dev.example.com
```

---

## Code Generation

Jalankan setelah membuat:

* Freezed Model
* Json Serializable Model
* Injectable Registration

```bash
dart run build_runner build --delete-conflicting-outputs
```

Watch mode:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

Remove generate splash:

```bash
dart run flutter_native_splash:remove
```

Generate splash:
```bash
dart run flutter_native_splash:create
```

Generate icon:
```bash
dart run flutter_launcher_icons
```


---

## Install Dependency

```bash
flutter pub get
```

---

## Run Application

### Development

```bash
flutter run --flavor dev -t lib/main_dev.dart
```

### Staging

```bash
flutter run --flavor staging -t lib/main_staging.dart
```

### Production

```bash
flutter run --flavor prod -t lib/main_production.dart
```

---

## Build APK

### Development

```bash
flutter build apk --flavor dev -t lib/main_dev.dart
```

### Staging

```bash
flutter build apk --flavor staging -t lib/main_staging.dart
```

### Production

```bash
flutter build apk --flavor prod -t lib/main_prod.dart
```

---

## Build App Bundle

### Production

```bash
flutter build appbundle --flavor prod -t lib/main_prod.dart
```

---

## Development Flow

1. Create Feature
2. Create Data Layer
3. Create Domain Layer
4. Create Presentation Layer
5. Register Dependency
6. Generate Code
7. Add Route
8. Implement UI

---

## Notes

* Jangan commit file `.env`
* Simpan credential dan URL API di environment file
* Semua dependency harus diregistrasikan melalui GetIt + Injectable
* Gunakan feature-based structure untuk setiap module baru

```
```

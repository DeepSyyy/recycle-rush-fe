## Recycle Rush

 Aplikasi yang mengubah pengalaman daur ulang menjadi perjalanan seru dan berarti. Pengguna tidak hanya dapat melacak keberadaan sampah di sekitar mereka, tetapi juga diundang untuk mengumpulkan sampah melalui tantangan harian yang penuh semangat. Kumpulan data keberadaan sampah di sekitar pengguna, dilaporkan melalui foto yang nantinya akan di deteksi menggunakan kecerdasan buatan, kemudian data tersebut dapat dimanfaatkan untuk upaya penanggulangan berikutnya. Dengan sistem poin dan papan peringkat, pengguna dapat bersaing dengan teman-teman mereka, menciptakan atmosfer yang kompetitif namun ramah lingkungan. Menyediakan lebih dari sekadar platform daur ulang, "Recycle Rush" membangun komunitas melalui fitur "Eco Clan," di mana pengguna dapat bersama-sama bekerja menuju tujuan daur ulang yang lebih tinggi. Dengan turnamen dan acara berkala, aplikasi ini tidak hanya menginspirasi aksi, tetapi juga memberikan informasi penting tentang keberlanjutan. "Recycle Rush" bukan hanya aplikasi, melainkan sahabat yang mengajak kita bersama-sama merawat bumi melalui langkah-langkah kecil yang bermakna.

## Project Structure:
We've organized the project into distinct layers to adhere to clean architecture principles:

```
/lib
|-- core
    |-- connection: Contains code related to connection management.
    |-- params
        |-- errors: Definitions for error handling.
        |-- params: Additional parameters and configurations.
|-- feature
    |-- feature1
        |-- business: Logic specific to 'feature1'.
            |-- entities: Definitions of core business entities.
            |-- usecase: Implementation of use cases or business logic.
            |-- repository: Interfaces or abstract classes for data access.
        |-- data: Data-related concerns for 'feature1'.
            |-- model: Data models or DTOs (Data Transfer Objects).
            |-- datasource: Classes responsible for fetching data.
            |-- repository: Concrete implementations of data repositories.
        |-- presentation: UI and user interaction for 'feature1'.
            |-- page: Flutter pages or screens.
            |-- provider: State management providers.
            |-- widget: Reusable UI components.


```
## Nama Anggota Team
1. Rizal Nur Arbaatun
2. Galih Akbar Nugraha
3. Falah Asyraf Darmawan Putra
4. Melyna Nura Samudra
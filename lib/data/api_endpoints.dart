// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

class ApiEndpoints {
  static const String news = '/Rest_api/list_berita.php';
  static const String entrepreneurship = '/Rest_api/list_berwirausaha.php';
  static const String rssNews = '/berita/rss-data';
  static const String guestbook = '/api/v1/guestbook';
  static const String login = '/Rest_api/login_user.php';
  static const String register = '/Rest_api/resgister_user.php';
  static const String indicator = '/Rest_api/get_indikator.php';
  static const String diagnosis = '/Rest_api/hasil_diaknosa.php';
  static const String consultation = '/api/v1/konsultasi';
  static const String detectionHistory = '/api/v1/riwayat-deteksi';
  static String diagnosisPdf(int id) => '/api/v1/konsultasi/$id/pdf-url';
  static const String tokoh = '/api/v1/tokoh';

  static String tokohDetail(int id) => '/api/v1/tokoh/$id';

  static const String referensiBuku = '/api/v1/referensi-buku';

  static String referensiBukuDetail(int id) => '/api/v1/referensi-buku/$id';

  static const String panduanAplikasi = '/api/v1/panduan-aplikasi';

  static String panduanAplikasiDetail(int id) => '/api/v1/panduan-aplikasi/$id';

  static const String referensiHasilPenelitian =
      '/api/v1/referensi-hasil-penelitian';

  static String referensiHasilPenelitianDetail(int id) =>
      '/api/v1/referensi-hasil-penelitian/$id';

  static const String modulPelatihan = '/api/v1/modul-pelatihan';

  static String modulPelatihanDetail(int id) => '/api/v1/modul-pelatihan/$id';

  static const profile = '/api/v1/profile';

  static const String komentar = '/api/v1/komentar';
}

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

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWhatsapp() async {
  final phone = dotenv.env['WHATSAPP'];

  if (phone == null || phone.isEmpty) {
    print('WHATSAPP tidak ditemukan di .env');
    return;
  }

  final url = Uri.parse('https://wa.me/$phone');

  print('WhatsApp URL: $url');

  try {
    final canLaunch = await canLaunchUrl(url);

    print('Can launch WhatsApp URL: $canLaunch');

    if (!canLaunch) {
      print('Tidak ada aplikasi yang dapat membuka URL: $url');
      return;
    }

    await launchUrl(url, mode: LaunchMode.externalApplication);
  } catch (e) {
    print('Gagal membuka WhatsApp: $e');
  }
}

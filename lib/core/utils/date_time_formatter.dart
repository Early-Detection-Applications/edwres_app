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

import 'package:intl/intl.dart';

class DateTimeFormatter {
  static String formatDateTime(
    DateTime? dateTime, {
    String pattern = 'dd MMM yyyy, HH:mm',
  }) {
    if (dateTime == null) return '-';

    return DateFormat(pattern, 'id_ID').format(dateTime);
  }

  static String formatDate(DateTime? dateTime) {
    if (dateTime == null) return '-';

    return DateFormat('dd MMMM yyyy', 'id_ID').format(dateTime);
  }

  static String formatTime(DateTime? dateTime) {
    if (dateTime == null) return '-';

    return DateFormat('HH:mm').format(dateTime);
  }
}

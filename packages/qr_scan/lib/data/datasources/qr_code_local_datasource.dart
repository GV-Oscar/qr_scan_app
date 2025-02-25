
import 'package:core/domain/entities/qr_code_entity.dart';
import 'package:sqflite/sqflite.dart';


class QrCodeLocalDataSource {
  final Database database;

  QrCodeLocalDataSource(this.database);

  Future<void> saveQrCode(QrCodeEntity qrCode) async {
    await database.insert('qr_codes', {
      'code': qrCode.code,
      'timestamp': qrCode.timestamp.toIso8601String(),
    });
  }

  Future<List<QrCodeEntity>> getQrCodeHistory() async {
    final List<Map<String, dynamic>> maps = await database.query('qr_codes');
    return maps.map((map) => QrCodeEntity(
      code: map['code'],
      timestamp: DateTime.parse(map['timestamp']),
    )).toList();
  }
}
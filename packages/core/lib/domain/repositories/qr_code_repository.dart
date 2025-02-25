import 'package:core/domain/entities/qr_code_entity.dart';

abstract class QrCodeRepository {
  Future<void> saveQrCode(QrCodeEntity qrCode);
  Future<List<QrCodeEntity>> getQrCodeHistory();
}
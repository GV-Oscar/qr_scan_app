import 'package:core/domain/entities/qr_code_entity.dart';
import 'package:core/domain/repositories/qr_code_repository.dart';

class SaveQrCodeUseCase {
  final QrCodeRepository repository;

  SaveQrCodeUseCase(this.repository);

  Future<void> call(QrCodeEntity qrCode) async {
    await repository.saveQrCode(qrCode);
  }
}

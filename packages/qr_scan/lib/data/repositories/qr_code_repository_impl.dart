import 'package:core/domain/entities/qr_code_entity.dart';
import 'package:core/domain/repositories/qr_code_repository.dart';
import 'package:qr_scan/data/datasources/qr_code_local_datasource.dart';

class QrCodeRepositoryImpl implements QrCodeRepository {
  final QrCodeLocalDataSource localDataSource;

  QrCodeRepositoryImpl(this.localDataSource);

  @override
  Future<void> saveQrCode(QrCodeEntity qrCode) async {
    await localDataSource.saveQrCode(qrCode);
  }

  @override
  Future<List<QrCodeEntity>> getQrCodeHistory() async {
    return await localDataSource.getQrCodeHistory();
  }
}
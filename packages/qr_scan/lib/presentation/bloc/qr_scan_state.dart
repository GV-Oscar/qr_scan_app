import 'package:core/domain/entities/qr_code_entity.dart';

abstract class QrScanState {}

class QrScanInitial extends QrScanState {}

class QrScanSuccess extends QrScanState {
  final List<QrCodeEntity> scannedCodes;
  QrScanSuccess(this.scannedCodes);
}

class QrScanLoading extends QrScanState {}

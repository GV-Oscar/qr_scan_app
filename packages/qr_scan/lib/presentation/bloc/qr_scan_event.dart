abstract class QrScanEvent {}
class ScanQRCode extends QrScanEvent {
  final String value;
  ScanQRCode(this.value);
}
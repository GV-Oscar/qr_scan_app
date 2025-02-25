import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/core.dart';
import 'package:qr_scan/domain/usecases/process_qr_code_usecase.dart';
import 'qr_scan_event.dart';
import 'qr_scan_state.dart';

class QrScanBloc extends Bloc<QrScanEvent, QrScanState> {
  final ProcessQrCodeUseCase processQrCodeUseCase;

  QrScanBloc(this.processQrCodeUseCase) : super(QrScanInitial());

  @override
  Stream<QrScanState> mapEventToState(QrScanEvent event) async* {
    if (event is ProcessQrCode) {
      yield QrScanLoading();
      try {
        await processQrCodeUseCase(event.qrCode);
        yield QrScanSuccess(event.qrCode);
      } catch (e) {
        yield QrScanFailure(e.toString());
      }
    }
  }
}
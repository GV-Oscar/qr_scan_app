class ProcessQrCodeUseCase {
  /// Procesa un código QR y retorna el resultado.
  /// Puedes personalizar la lógica según el tipo de QR escaneado.
  String execute(String qrCode) {
    if (qrCode.isEmpty) {
      throw ArgumentError("El código QR no puede estar vacío");
    }

    // Aquí puedes agregar lógica específica, como validar URL, JSON, etc.
    return "Código QR procesado: $qrCode";
  }
}
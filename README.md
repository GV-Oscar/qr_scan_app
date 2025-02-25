# Configuración del Proyecto

Este proyecto es una aplicación móvil desarrollada en Flutter que permite escanear códigos QR y autenticar usuarios mediante Face ID o Huella Digital. A continuación, se detallan los pasos necesarios para configurar y ejecutar el proyecto en tu entorno local.

---

## **Requisitos Previos**

Antes de comenzar, asegúrate de tener instaladas las siguientes herramientas:

1. **Flutter SDK**: Asegúrate de tener Flutter instalado. Puedes descargarlo desde [aquí](https://flutter.dev/docs/get-started/install).
   - Verifica la instalación ejecutando:
     ```bash
     flutter doctor
     ```
   - Este comando te indicará si hay algún problema con tu configuración.

2. **Android Studio o Xcode**:
   - Para desarrollo en Android, necesitas Android Studio.
   - Para desarrollo en iOS, necesitas Xcode (solo disponible en macOS).

3. **Git**: Asegúrate de tener Git instalado. Puedes descargarlo desde [aquí](https://git-scm.com/).

4. **Melos**: Es una herramienta para gestionar monorepos en Dart/Flutter. Instálala ejecutando:
   ```bash
   dart pub global activate melos
   ```

---

## **🎯 Flujo de Trabajo Recomendado**
Cuando trabajes en el proyecto, sigue este orden de comandos para evitar errores y mantener un código limpio:  
```sh
melos bootstrap       # Instalar dependencias  
melos clean           # Limpiar caché  
melos format          # Formatear código  
melos analyze         # Revisar errores  
melos test            # Ejecutar pruebas  
melos generate_code   # Generar código si usas Freezed, JsonSerializable, etc.  
melos build_all       # Compilar app para Android e iOS  
```

---

### **Estructura del Proyecto**

El proyecto está organizado en un monorepo con la siguiente estructura:

```
qr_scan_app/
├── packages/
│   ├── qr_scan/          # Módulo para escanear códigos QR
│   ├── biometric_auth/   # Módulo para autenticación biométrica
│   ├── core/             # Funcionalidades comunes (temas, errores, etc.)
├── app/                  # Aplicación principal que integra todos los módulos
├── melos.yaml            # Configuración de Melos para el monorepo
├── README.md             # Documentación del proyecto
```

---

## **Licencia**

Este proyecto está bajo la licencia **MIT**. Para más detalles, consulta el archivo [LICENSE](LICENSE).

---

¡Gracias por tu interés en este proyecto! Esperamos que esta guía te haya sido útil para configurar y ejecutar la aplicación. 🚀

---

### **Notas Adicionales**

- **Dependencias Nativas**: Si encuentras problemas con dependencias nativas (por ejemplo, en iOS), asegúrate de ejecutar:
  ```bash
  cd ios
  pod install
  ```
- **Fastlane**: Si deseas automatizar la compilación y despliegue, consulta la documentación de [Fastlane](https://docs.fastlane.tools/).

---
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

## **Clonar el Repositorio**

1. Abre una terminal y clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/qr_scan_app.git
   ```

2. Navega a la carpeta del proyecto:
   ```bash
   cd qr_scan_app
   ```

---

## **Configurar el Entorno**

### **1. Instalar Dependencias**

Este proyecto utiliza **Melos** para gestionar los paquetes en un monorepo. Para instalar las dependencias de todos los paquetes, ejecuta:

```bash
melos bootstrap
```

Este comando se encargará de obtener todas las dependencias necesarias para cada paquete.

---

### **2. Estructura del Proyecto**

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

### **3. Ejecutar la Aplicación**

1. **Navega a la carpeta de la aplicación principal**:
   ```bash
   cd app
   ```

2. **Ejecuta la aplicación**:
   - Para Android:
     ```bash
     flutter run
     ```
   - Para iOS:
     ```bash
     flutter run
     ```
     **Nota**: Para iOS, asegúrate de abrir el proyecto en Xcode (`ios/Runner.xcworkspace`) y configurar el equipo de desarrollo antes de ejecutar.

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
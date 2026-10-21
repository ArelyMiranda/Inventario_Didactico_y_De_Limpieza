# Inventario_Didactico_y_De_Limpieza

<div align="center">
<img width="70" alt="Logo" src="https://github.com/user-attachments/assets/bab3db30-0334-4138-8c12-a9f25d49bfb8" />
# 📦 Inventario Didáctico y Material de Limpieza
 
**Plataforma oficial de inventario del Instituto Nacional Prof. Bertha Fidelia Cañas (INBEFIC)**
 
![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4.x-06B6D4?logo=tailwindcss&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![Estado](https://img.shields.io/badge/estado-en%20desarrollo-yellow)
 
</div>
---
 
## 📝 Descripción
 
Aplicación web para la **gestión, control y organización** de los recursos didácticos y los materiales de limpieza del instituto. Permite registrar entradas y salidas, consultar las existencias, recibir alertas de stock bajo y generar reportes imprimibles.
 
Todo funciona en el navegador y los datos se guardan en el `localStorage`, por lo que **no necesita servidor ni base de datos**.
 
## ✨ Funcionalidades
 
- 🔐 **Registro e inicio de sesión** con validación de campos y opción de mostrar/ocultar la contraseña.
- 📋 **Inventario** con el stock actual de cada producto y estado según la cantidad.
- ⚠️ **Alerta de stock bajo** cuando un producto está por debajo del mínimo (10 unidades).
- ⚡ **Acciones rápidas** para registrar entradas y salidas de productos (encargado, fecha, categoría, producto y cantidad), con historial que se puede filtrar, eliminar, vaciar o restaurar.
- 📊 **Generar reporte** con filtros por categoría (Didáctico / Limpieza) y tipo de movimiento (Entrada / Salida), listo para imprimir.
- 🚪 **Cierre de sesión** y redirección automática si ya hay una sesión activa.
- 📱 Diseño **responsive**, con menú de navegación adaptable.
## 📂 Estructura del proyecto
 
```
├── index.html                # Pantalla de bienvenida
├── inbefic-registro.html     # Registro de usuario
├── inicio_sesión.html        # Inicio de sesión
├── Inventario.html           # Vista del inventario y alertas de stock
├── Acciones_rapidas.html     # Registro de entradas/salidas e historial
├── Generar_Reporte.html      # Reportes con filtros
├── INBEFIC.jpg               # Logo de la institución
├── input.css                 # Archivo fuente de Tailwind CSS
├── output.css                # CSS generado por Tailwind
├── package.json              # Dependencias del proyecto
└── package-lock.json
```
 
## 🛠️ Tecnologías
 
- **HTML5** y **JavaScript** (vanilla)
- **[Tailwind CSS 4](https://tailwindcss.com/)** (`@tailwindcss/cli`)
- **[Font Awesome 7](https://fontawesome.com/)** para los íconos (vía CDN)
- **localStorage** del navegador para guardar usuarios, sesión e historial
## 🚀 Instalación y uso
 
### Requisitos
 
- Un navegador web moderno (Chrome, Edge, Firefox…)
- [Node.js](https://nodejs.org/) *(solo si vas a modificar los estilos)*
### Pasos
 
1. **Clona el repositorio**
```bash
   git clone https://github.com/ArelyMiranda/Inventario_Didactico_y_De_Limpieza.git
   cd Inventario_Didactico_y_De_Limpieza
```
 
2. **Abre `index.html`** en tu navegador (o usa la extensión *Live Server* de VS Code).
3. **Regístrate** y luego **inicia sesión** para entrar al inventario.
### Modificar los estilos (opcional)
 
```bash
npm install
npx @tailwindcss/cli -i ./input.css -o ./output.css --watch
```
 
## 🧭 Flujo de uso
 
```
index.html ──► Registro ──► Inicio de sesión ──► Inventario
                                                    │
                                   ┌────────────────┴───────────────┐
                             Acciones rápidas                 Generar reporte
```
 
## ⚠️ Notas importantes
 
- Los datos se almacenan **solo en el navegador** de cada equipo; si se borra el caché o se cambia de navegador, se pierden.
- Las contraseñas se guardan sin cifrar en `localStorage`, por lo que este proyecto es **educativo** y no debe usarse con datos sensibles.
- Las páginas de inicio, registro y sesión cargan el logo desde `../img/INBEFIC.jpg`; si el logo no aparece, ajusta esa ruta a donde tengas la imagen.
## 👥 Autores
 
Proyecto realizado por: **Merlyn, Nataly, Dileymi, Sandra y Otoniel**
 
Repositorio mantenido por [@ArelyMiranda](https://github.com/ArelyMiranda).
 
## 📄 Licencia
 
© 2026 INBEFIC. Todos los derechos reservados.

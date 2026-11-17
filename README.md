# Inventario_Didactico_y_De_Limpieza

![Logo institucional](Proyecto_Inventario2026/img/INBEFIC.jpg)

**Aplicacion web de gestión de inventario del Instituto Nacional Prof. Bertha Fidelia Cañas (INBEFIC)**

![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![Estado](https://img.shields.io/badge/Estado-En%20desarrollo-yellow)

---

## 📝 Descripción

Aplicación web desarrollada para la **gestión, control y organización de los recursos didácticos y materiales de limpieza** del Instituto Nacional Prof. Bertha Fidelia Cañas (INBEFIC).

El sistema permite administrar los productos del inventario, controlar las existencias, registrar entradas y salidas, consultar el historial de movimientos y generar reportes.

A diferencia de la versión inicial, el sistema utiliza **PHP para procesar las operaciones y MySQL/MariaDB para almacenar la información**, permitiendo que los datos se administren desde una base de datos.

## ✨ Funcionalidades principales

- 🔐 **Registro de usuarios:** permite crear cuentas para acceder al sistema.
- 🔑 **Inicio de sesión:** valida las credenciales del usuario.
- 🚪 **Cierre de sesión:** permite finalizar la sesión de forma segura.
- 📋 **Gestión de inventario:** muestra los productos y sus existencias.
- ➕ **Registro de productos:** permite agregar productos nuevos al inventario.
- ✏️ **Modificación de productos:** permite actualizar la información de los productos.
- 🗑️ **Eliminación de productos:** permite eliminar registros del inventario.
- 📦 **Control de existencias:** actualiza las cantidades disponibles.
- ⚡ **Acciones rápidas:** permite registrar entradas y salidas de productos.
- 📚 **Historial de movimientos:** almacena y permite consultar los movimientos realizados.
- ❌ **Eliminación de movimientos:** permite eliminar registros del historial mediante su archivo correspondiente.
- ⚠️ **Alertas de stock mínimo:** identifica productos cuya existencia está por debajo del mínimo establecido (10 unidades).
- 📊 **Generación de reportes:** permite consultar información de los movimientos del inventario.
- 📱 **Diseño responsive:** adapta las páginas a diferentes tamaños de pantalla.

## 📂 Estructura del proyecto

```text
Inventario_Didactico_y_De_Limpieza/
│
├── Proyecto_Inventario2026/
│   └── SRC/
│       ├── index.html
│       ├── inbefic-registro.html
│       ├── inicio_sesion.html
│       ├── inicio_sesión.html
│       ├── Inventario.html
│       ├── Acciones rapidas.html
│       ├── Generar_Reporte.html
│       │
│       ├── conexion.example.php
│       ├── consultar.php
│       ├── guardar.php
│       ├── modificar.php
│       ├── eliminar.php
│       ├── eliminar_movimiento.php
│       ├── registrar_usuario.php
│       ├── iniciar_sesion.php
│       ├── proteger.php
│       ├── cerrar_sesion.php
│       ├── reporte.php
│       │
│       ├── input.css
│       └── output.css
│
├── database/
│   └── inventario_revision.sql
│
├── .gitignore
└── README.md
```

## 🛠️ Tecnologías utilizadas

- **HTML5:** estructura de las páginas web.
- **CSS3:** diseño y presentación de la aplicación.
- **JavaScript:** interactividad y funciones del lado del navegador.
- **Tailwind CSS:** estilos y diseño adaptable.
- **PHP:** procesamiento de formularios, usuarios, productos y movimientos.
- **MySQL / MariaDB:** almacenamiento y administración de los datos.
- **XAMPP:** servidor local para ejecutar Apache, PHP y MySQL/MariaDB.
- **Font Awesome:** iconos utilizados en la interfaz.
- **Git y GitHub:** control de versiones y alojamiento del código fuente.

## 🚀 Instalación y configuración

### Requisitos

- Tener instalado [XAMPP](https://www.apachefriends.org/).
- Tener Apache y MySQL activos.
- Contar con un navegador web.
- Tener acceso a phpMyAdmin.

### Pasos para instalar

**1. Descargar el proyecto**

Clonar el repositorio desde GitHub:

```bash
git clone https://github.com/ArelyMiranda/Inventario_Didactico_y_De_Limpieza.git
```

**2. Copiar el proyecto en XAMPP**

Colocar la carpeta `Proyecto_Inventario2026` dentro de la carpeta `htdocs` de XAMPP.

**3. Iniciar los servicios**

Abrir el panel de control de XAMPP e iniciar:

- Apache
- MySQL

**4. Crear la base de datos**

Entrar a phpMyAdmin:

```text
http://localhost/phpmyadmin
```

Importar el archivo:

```text
database/inventario_revision.sql
```

El archivo crea la base de datos de demostración llamada `inventario_demo`, junto con las tablas y datos de ejemplo.

**5. Configurar la conexión PHP**

Dentro de `Proyecto_Inventario2026/SRC` se encuentra el archivo `conexion.example.php`.

- Crear una copia de ese archivo.
- Cambiar el nombre de la copia a `conexion.php`.
- Configurar el servidor, usuario, contraseña y base de datos.
- Utilizar `inventario_demo` cuando se trabaje con la base de datos de demostración.

**Importante:** el archivo `conexion.php` contiene las credenciales de conexión y no debe publicarse en GitHub. El repositorio incluye únicamente una plantilla de ejemplo.

**6. Abrir la aplicación**

Si la carpeta está ubicada en:

```text
C:\xampp\htdocs\Proyecto_Inventario2026\SRC
```

Abrir en el navegador:

```text
http://localhost/Proyecto_Inventario2026/SRC/index.html
```

Si se utiliza otra ubicación dentro de `htdocs`, ajustar la dirección según corresponda.

## 🧭 Flujo de funcionamiento

```text
                 index.html
                      │
             ┌────────┴────────┐
             │                 │
          Registro          Inicio de sesión
             │                 │
             └────────┬────────┘
                      │
                  Inventario
                      │
          ┌───────────┼───────────┐
          │           │           │
     Consultar    Acciones    Generar
     productos    rápidas     reportes
                      │
                Entradas y salidas
                      │
                Historial de
                 movimientos
                      │
                 Base de datos
                 MySQL/MariaDB
```

## 🗄️ Base de datos

El proyecto incluye un archivo SQL de demostración:

`database/inventario_revision.sql`

La base de datos utiliza las siguientes tablas:

- **productos:** almacena los productos, categorías y cantidades disponibles.
- **movimientos:** registra las entradas y salidas, cantidades, responsables y fechas.
- **usuarios:** almacena los datos de las cuentas registradas.

La base de datos de demostración se llama `inventario_demo`.

⚠️ **Advertencia:** el archivo SQL elimina y vuelve a crear las tablas de demostración. Debe importarse únicamente en una base de datos de prueba. No debe utilizarse sobre una base de datos que contenga información que se desee conservar.

## 🔒 Seguridad y consideraciones

- El archivo de conexión real `conexion.php` no debe publicarse en GitHub.
- Se incluye `conexion.example.php` como plantilla para configurar la conexión.
- El archivo `.gitignore` ayuda a excluir archivos privados y temporales.
- Las operaciones de la aplicación se procesan mediante archivos PHP.
- La información del inventario se almacena en MySQL/MariaDB.

## 👥 Autores

Proyecto realizado por:

**Merlyn, Nataly, Dileymi, Sandra y Otoniel.**

Repositorio mantenido por [@ArelyMiranda](https://github.com/ArelyMiranda).

## 📄 Licencia

© 2026 INBEFIC. Todos los derechos reservados.

Proyecto académico desarrollado con fines educativos.
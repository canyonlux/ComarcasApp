# Aplicación de Comarques

Esta aplicación Flutter proporciona una guía interactiva de las comarcas de la Comunidad Valenciana. Permite a los usuarios explorar información detallada sobre cada comarca, así como acceder a datos del tiempo y realizar un proceso de registro y login.

## Funcionalidades

### Pantallas Principales

- **LoginScreen**: Pantalla de inicio de sesión donde los usuarios pueden ingresar con un nombre de usuario y contraseña. Incluye opciones para navegar a la pantalla de registro o continuar directamente a la pantalla principal de la aplicación.
- **RegisterScreen**: Permite a los usuarios registrarse proporcionando un nombre de usuario y contraseña. Estos datos se utilizan para prellenar los campos correspondientes en la pantalla de inicio de sesión.
- **ProvinciasScreen**: Muestra una lista de provincias, cada una llevando a su respectiva pantalla de comarcas.
- **ComarcasScreen**: Exhibe las comarcas pertenecientes a la provincia seleccionada, permitiendo al usuario seleccionar una para obtener más detalles.
- **ComarcaDetailScreen**: Presenta información detallada sobre la comarca seleccionada, incluyendo una imagen, descripción, y datos como la población y la capital de la comarca.
- **WeatherScreen**: Muestra información meteorológica para la comarca seleccionada, utilizando las coordenadas geográficas de la misma.

### Funcionalidades Específicas

- Navegación entre pantallas usando `Navigator`.
- Uso de `ListView.builder` para mostrar listas dinámicas de provincias y comarcas.
- Implementación de formularios con `TextFormField` para el registro y el inicio de sesión.
- Uso de `StatefulWidget` para manejar los cambios de estado en las pantallas de login y registro.
- Pasar datos entre pantallas, específicamente, pasando el nombre de usuario y contraseña de `RegisterScreen` a `LoginScreen`.

### Estilo y Diseño

- Estilo consistente en los botones y campos de formulario.
- Diseño responsivo que se adapta a diferentes tamaños de pantalla y orientaciones.

## Próximos Pasos

- Implementar la lógica de autenticación y conexión a una base de datos para el registro y el inicio de sesión.
- Añadir funcionalidades adicionales en `WeatherScreen`, como obtener datos del tiempo en tiempo real.
- Mejorar la interfaz de usuario con animaciones y transiciones más fluidas.

## Notas Adicionales

- Esta documentación asume un conocimiento básico de Flutter y Dart.
- La aplicación está diseñada para ser fácilmente ampliable y modificable para futuras mejoras.


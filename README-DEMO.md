# 🎨 Aqua Patterns - Demo Gutenberg

Este es un servidor HTML local que simula los bloques de Gutenberg para que puedas trabajar el diseño de forma visual antes de implementarlo en el plugin de WordPress.

## 🚀 Inicio Rápido

### Opción 1: Script Automático (Recomendado)
```powershell
.\start-demo.ps1
```

### Opción 2: Manual
```bash
node server.js
```

Luego abre: http://localhost:3001

## 📱 Características del Demo

### 🎯 Patrones Incluidos
- **Hero Premium**: Título, subtítulo y CTAs
- **Golden Circle**: Why-How-What con CTA
- **Timeline**: Proceso paso a paso
- **Servicios**: 3 columnas con descripción
- **Team**: Grid de miembros del equipo
- **Casos de Éxito**: Testimonios y resultados
- **Galería**: Grid responsive de proyectos
- **Contacto**: Formulario completo
- **Newsletter**: Suscripción con beneficios
- **WhatsApp Float**: Botón flotante

### 🛠️ Controles Disponibles
- **Cambiar Dispositivo**: Desktop / Tablet / Móvil
- **Recargar Patrones**: Botón de actualización
- **WhatsApp**: Botón flotante funcional
- **Formularios**: Validación básica

### 📱 Responsive Design
- **Desktop**: 1200px+ (ancho completo)
- **Tablet**: 768px (ancho medio)
- **Móvil**: 375px (ancho estrecho)

## 🎨 Personalización

### Editar Patrones
1. Abre `gutenberg-demo.html`
2. Busca la sección del patrón que quieres modificar
3. Edita el contenido HTML/CSS
4. Guarda y recarga la página

### Agregar Nuevos Patrones
1. Copia una sección existente en `gutenberg-demo.html`
2. Modifica el contenido
3. Actualiza el título y descripción
4. Guarda y recarga

### Cambiar Colores/Tipografías
1. Modifica las variables CSS en la sección `<style>`
2. Ajusta los estilos de los bloques
3. Guarda y recarga

## 🔄 Flujo de Trabajo

1. **Diseño**: Trabaja en el demo HTML
2. **Pruebas**: Prueba responsive y funcionalidad
3. **Implementación**: Pasa el código al plugin WordPress
4. **Validación**: Prueba en WordPress real

## 📁 Estructura de Archivos

```
├── gutenberg-demo.html    # Demo principal
├── server.js              # Servidor Node.js
├── start-demo.ps1         # Script de inicio
└── README-DEMO.md         # Esta documentación
```

## 🛠️ Requisitos

- **Node.js**: Versión 14 o superior
- **Navegador**: Chrome, Firefox, Safari, Edge
- **Sistema**: Windows, macOS, Linux

## 🚨 Solución de Problemas

### Puerto 3001 ocupado
```bash
# Cambiar puerto en server.js
const PORT = 3002;
```

### Node.js no encontrado
1. Instala Node.js desde nodejs.org
2. Reinicia la terminal
3. Ejecuta `node -v` para verificar

### Archivos no encontrados
1. Verifica que estés en el directorio correcto
2. Ejecuta `ls` para ver los archivos
3. Asegúrate de que `gutenberg-demo.html` existe

## 🎯 Próximos Pasos

1. **Diseña**: Personaliza los patrones en el demo
2. **Prueba**: Valida responsive y funcionalidad
3. **Implementa**: Pasa el código al plugin WordPress
4. **Optimiza**: Ajusta para producción

## 📞 Soporte

Si tienes problemas:
1. Revisa la consola del navegador (F12)
2. Verifica que Node.js esté funcionando
3. Comprueba que el puerto 3001 esté libre

---

**¡Disfruta diseñando! 🎨**

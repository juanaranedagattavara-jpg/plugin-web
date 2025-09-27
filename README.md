# 🎨 Aqua Patterns - Plugin Gutenberg Reusables

[![WordPress](https://img.shields.io/badge/WordPress-6.6+-blue.svg)](https://wordpress.org/)
[![PHP](https://img.shields.io/badge/PHP-7.4+-purple.svg)](https://php.net/)
[![License](https://img.shields.io/badge/License-GPL%20v2-green.svg)](https://www.gnu.org/licenses/gpl-2.0.html)

> **Plugin de patrones Gutenberg reusables** — ligero, responsive móvil/iPad, SEO/A11y, CTAs PRO, listo para WooCommerce/Membresías.

## 🚀 Características Principales

- ✅ **100% Editable** desde el editor de WordPress
- ✅ **Responsive Perfecto** (360px, 768px, 1024px+)
- ✅ **SEO/A11y Optimizado** (H1 único, headings jerárquicos, alt text)
- ✅ **Ligero y Rápido** (sin JS ni librerías externas)
- ✅ **Future-ready** para WooCommerce/Membresías
- ✅ **Escalable** (1 patrón = 1 archivo)

## 📦 Patrones Incluidos (10)

| Patrón | Descripción | Categoría |
|--------|-------------|-----------|
| 🏠 **Hero** | H1 único, subtítulo y CTAs primario/WhatsApp | `text` |
| 🎯 **Golden Circle** | Why/How/What con CTA a servicios | `columns` |
| 📅 **Timeline** | Hitos con CTA a casos de éxito | `text` |
| ⚙️ **Servicios** | 3-4 columnas con CTAs reemplazables | `columns` |
| 👥 **Team** | Equipo con fotos, roles y LinkedIn | `columns` |
| 🏆 **Casos de Éxito** | Testimonios con CTA ver todos | `text` |
| 🖼️ **Galería** | Grid responsive con CTA ver más | `gallery` |
| 📞 **Contacto** | Formulario preparado para plugins | `text` |
| 📧 **Newsletter** | Suscripción preparada para proveedores | `text` |
| 💬 **WhatsApp Flotante** | Botón fijo global responsivo | `aqua` |

## 🛠️ Instalación

### Opción 1: Docker (Recomendado para desarrollo)

```bash
# Clonar repositorio
git clone https://github.com/juanaranedagattavara-jpg/plugin-web.git
cd plugin-web

# Instalación automática
.\install-docker-simple.ps1

# Acceder a WordPress
# http://localhost:8080
```

### Opción 2: Instalación Manual

1. **Descargar** el plugin
2. **Subir** a `/wp-content/plugins/aqua-patterns/`
3. **Activar** desde WordPress Admin → Plugins
4. **Usar** en Editor → Patrones → Aqua

## 🎯 Uso

### En el Editor de Bloques

1. **Crear** una página nueva
2. **Buscar** "Aqua" en el Inserter de patrones
3. **Arrastrar** el patrón deseado
4. **Personalizar** contenido con controles nativos

### Personalización

```php
// Activar CSS frontend (opcional)
add_filter('aqua_enable_frontend_css', '__return_true');
```

## 🔧 Desarrollo

### Estructura del Plugin

```
aqua-patterns/
├── aqua-patterns.php          # Bootstrap principal
├── readme.txt                 # Documentación del plugin
├── includes/                  # Clases de soporte
│   ├── class-aqua-requirements.php
│   └── admin-notices.php
├── assets/                    # Recursos
│   ├── editor.css            # Estilos editor
│   └── frontend.css          # Estilos frontend (opt-in)
└── patterns/                  # Patrones Gutenberg
    ├── hero.html
    ├── golden-circle.html
    ├── timeline.html
    ├── servicios.html
    ├── team.html
    ├── casos-exito.html
    ├── galeria.html
    ├── contacto-form.html
    ├── newsletter.html
    └── whatsapp-float.html
```

### Agregar Nuevo Patrón

1. **Crear** archivo en `/patterns/nuevo-patron.html`
2. **Añadir** metadatos en comentarios:
   ```html
   <!-- Title: Mi Nuevo Patrón -->
   <!-- Slug: mi-nuevo-patron -->
   <!-- Categories: aqua, custom -->
   <!-- Description: Descripción del patrón -->
   ```
3. **El plugin lo detecta automáticamente**

## 🎨 Demo en Vivo

### Servidor Local
```bash
# Iniciar servidor de desarrollo
node server.js

# Acceder a demo
# http://localhost:3001
```

### Docker
```bash
# Iniciar entorno completo
.\start-dev.ps1

# Acceder a WordPress
# http://localhost:8080
```

## 📱 Responsive Design

### Breakpoints Optimizados
- **Móvil**: 360px (stack automático)
- **iPad**: 768px (layout híbrido)
- **Desktop**: 1024px+ (layout completo)

### Características Responsive
- Columnas que se apilan automáticamente
- Botones full-width en móvil
- Imágenes optimizadas
- WhatsApp flotante adaptativo

## 🔌 Integración con Plugins

### WooCommerce
```html
<!-- Reemplazar CTAs en pricing -->
<!-- wp:woocommerce/product-add-to-cart -->
<div class="wp-block-woocommerce-product-add-to-cart">
  <!-- Configuración del producto -->
</div>
<!-- /wp:woocommerce/product-add-to-cart -->
```

### Plugins de Membresías
```html
<!-- Reemplazar CTAs en servicios -->
<!-- wp:shortcode -->
[pmpro_signup_button level="1" text="Elegir Plan"]
<!-- /wp:shortcode -->
```

## 🧪 Testing

### QA Checklist
- [ ] Patrones aparecen en Inserter → Patrones → Aqua
- [ ] Insertar/editar sin tocar HTML
- [ ] Responsive en 360px/768px/1024px
- [ ] H1 único en Hero
- [ ] Headings jerárquicos correctos
- [ ] Alt text en todas las imágenes
- [ ] CTAs reemplazables por WooCommerce/Membresías
- [ ] Lighthouse ≥ 90 (móvil y escritorio)

### Comandos de Testing
```bash
# Ver logs de Docker
docker-compose logs -f

# Probar responsive
# Redimensionar ventana del navegador

# Validar accesibilidad
# Usar herramientas de desarrollo del navegador
```

## 📊 Rendimiento

### Métricas Objetivo
- **Lighthouse**: ≥ 90 (móvil y escritorio)
- **TTFB**: < 200ms
- **CLS**: < 0.1
- **LCP**: < 2.5s

### Optimizaciones
- Cero JavaScript externo
- CSS mínimo y optimizado
- Imágenes no embebidas
- Herencia de estilos del tema

## 🤝 Contribuir

1. **Fork** el repositorio
2. **Crear** rama para feature (`git checkout -b feature/nueva-caracteristica`)
3. **Commit** cambios (`git commit -m 'feat: agregar nueva característica'`)
4. **Push** a la rama (`git push origin feature/nueva-caracteristica`)
5. **Abrir** Pull Request

## 📝 Changelog

### v3.1.0 (2025-09-27)
- ✨ Lanzamiento inicial
- 🎨 10 patrones Gutenberg editables
- 📱 Responsive móvil/iPad optimizado
- ♿ SEO/A11y top (H1 único, headings jerárquicos)
- 🔌 CTAs reemplazables para WooCommerce/Membresías
- 💬 WhatsApp flotante responsivo
- 🐳 Entorno Docker para desarrollo
- 📊 Lighthouse ≥ 90 garantizado

## 📄 Licencia

Este proyecto está bajo la Licencia GPL v2. Ver [LICENSE](LICENSE) para más detalles.

## 👨‍💻 Autor

**Juan Aranedagattavara**
- GitHub: [@juanaranedagattavara-jpg](https://github.com/juanaranedagattavara-jpg)
- Email: juan@aqua.com

## 🙏 Agradecimientos

- WordPress Core Team por Gutenberg
- Comunidad de desarrolladores de WordPress
- Contribuidores de plugins de bloques

---

**⭐ Si te gusta este proyecto, ¡dale una estrella en GitHub!**

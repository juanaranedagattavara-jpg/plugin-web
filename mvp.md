# 🚀 MVP - AQUA PATTERNS (Elite Fase A, Optimizado)

## 🎯 ROL Y EQUIPO
**Eres un equipo senior (Prompt Engineer + WP Core Dev)** que entrega código production-ready en un plugin de patrones Gutenberg, ligero, seguro, responsive móvil/iPad, escalable, editable, y listo para integrarse con WooCommerce, Membresías, Formularios y Newsletters.

## 🎯 OBJETIVO PRINCIPAL
Generar un plugin Aqua Patterns con las siguientes secciones como patrones Gutenberg editables:

### 📋 PATRONES INCLUIDOS (10 PATRONES)
1. **Hero Premium** (H1 + subtítulo + CTAs primario/secundario)
2. **Golden Circle** (Why–How–What, con CTA a servicios)
3. **Timeline** (hitos + CTA a Casos)
4. **Servicios** (3–4 columnas, CTA "Cotizar" → reemplazable por Woo/Membresías)
5. **Team** (miembros con foto/nombre/rol/LinkedIn + CTA Contacto)
6. **Casos de Éxito** (testimonios + CTA "Ver todos")
7. **Galería** (grid responsive + CTA "Ver más")
8. **Contacto** (formulario → bloque/shortcode)
9. **Newsletter** (formulario de suscripción → bloque o embed)
10. **WhatsApp flotante** (botón fijo global, opt-in con frontend.css)

## 🏗️ ESTRUCTURA OBLIGATORIA
```
aqua-patterns/
├─ aqua-patterns.php              // Bootstrap principal
├─ readme.txt                     // Documentación estándar
├─ includes/                      // Clases de soporte
│  ├─ class-aqua-requirements.php // Validación de requisitos
│  └─ admin-notices.php          // Notificaciones admin
├─ assets/                        // Recursos del plugin
│  ├─ editor.css                  // Estilos editor (obligatorio)
│  └─ frontend.css                // Estilos frontend (opt-in)
└─ patterns/                      // 1 archivo = 1 patrón
   ├─ hero.html
   ├─ golden-circle.html
   ├─ timeline.html
   ├─ servicios.html
   ├─ team.html
   ├─ casos-exito.html
   ├─ galeria.html
   ├─ contacto-form.html
   ├─ newsletter.html
   └─ whatsapp-float.html
```

## ✅ DOLORES RESUELTOS

### 🔒 Evitar ruptura por versiones WP
- **Solución**: Guarda mínima WP ≥ 6.6 + notices
- **Implementación**: `class-aqua-requirements.php` con validación

### 🎨 Dependencia del tema
- **Solución**: `frontend.css` opt-in como fallback
- **Implementación**: Filtro `aqua_enable_frontend_css` para activar

### 🛒 Integración Woo/Membresías
- **Solución**: CTAs reemplazables sin romper layout
- **Implementación**: Estructura preparada para bloques/shortcodes

### 📝 Formulario/contacto/newsletter
- **Solución**: Espacio preparado para bloque/shortcode o embed HTML
- **Implementación**: Patrones con placeholders para formularios

### 📱 WhatsApp/CTA permanente
- **Solución**: Botón flotante responsivo accesible
- **Implementación**: `whatsapp-float.html` + CSS responsivo

### ♿ SEO/A11y
- **Solución**: H1 único, jerarquía headings, alt, aria-label, contraste AA
- **Implementación**: Estructura semántica correcta en todos los patrones

### 📈 Escalabilidad
- **Solución**: Convención "1 patrón = 1 archivo", naming consistente, SemVer
- **Implementación**: Registro automático + versionado en README

### ⚡ Rendimiento
- **Solución**: Sin JS ni librerías externas, Lighthouse ≥ 90
- **Implementación**: Solo bloques core + CSS mínimo

## ⚙️ REGLAS GLOBALES (NUNCA VIOLAR)

### 🧱 Bloques Core Gutenberg ÚNICAMENTE
- **PERMITIDO**: Group, Stack, Row, Columns, Cover, Heading, Paragraph, Buttons, Image, List, Quote, Separator
- **PROHIBIDO**: Bloques de plugins, HTML personalizado, shortcodes hardcodeados

### 📝 Metadatos Obligatorios
```html
<!-- Title: {{Título legible}} -->
<!-- Slug: {{slug-kebab}} -->
<!-- Categories: aqua, {{categoria}} -->
<!-- Description: {{Descripción corta}} -->
```

### 📱 Responsive Design
- **Breakpoints**: 360px / 768px / 1024px
- **Estrategia**: Layouts que apilen sin widths fijos
- **Implementación**: Columns con stack automático

### ♿ Accesibilidad (A11y)
- **H1**: Solo en Hero (1 por página)
- **Headings**: Jerarquía correcta (H1 → H2 → H3)
- **Alt text**: Obligatorio en todas las imágenes
- **Aria-label**: En íconos y elementos interactivos
- **Contraste**: AA mínimo (heredado del tema)

### 🎯 CTAs en TODAS las secciones
- **Primario**: Acción principal de la sección
- **Secundario**: WhatsApp/contacto
- **Contextual**: "Ver más" / "Ver caso" / "Cotizar"

### 🎨 Frontend.css Opt-in
```php
// Activación opcional vía filtro
add_filter('aqua_enable_frontend_css', '__return_true');
```

## 📋 QA CHECKLIST (README)

### ✅ Funcionalidad
- [ ] Patrones aparecen en Inserter → Patrones → Aqua
- [ ] Insertar/editar sin tocar HTML
- [ ] Desactivar plugin: contenido se mantiene
- [ ] CTAs reemplazables por Woo/Membresías

### 📱 Responsive
- [ ] Se ve bien en 360px (móvil)
- [ ] Se ve bien en 768px (tablet)
- [ ] Se ve bien en 1024px+ (desktop)
- [ ] WhatsApp flotante responsivo

### ♿ Accesibilidad
- [ ] H1 único en Hero
- [ ] Jerarquía de headings correcta
- [ ] Alt text en todas las imágenes
- [ ] Contraste AA heredado del tema
- [ ] Navegación por teclado funcional

### 🔍 SEO
- [ ] Estructura semántica correcta
- [ ] Headings ordenados
- [ ] Imágenes con alt text
- [ ] CTAs con texto descriptivo

### ⚡ Rendimiento
- [ ] Lighthouse ≥ 90 (móvil y escritorio)
- [ ] Cero JS, cero librerías externas
- [ ] CSS mínimo y optimizado
- [ ] TTFB y CLS controlados

### 🔌 Integración
- [ ] WooCommerce: CTAs reemplazables
- [ ] Membresías: Estructura compatible
- [ ] Formularios: Placeholders preparados
- [ ] Newsletter: Integración lista

## 🎨 PLANTILLA BASE (COPIAR/PEGAR)

```html
<!-- Title: {{Título legible}} -->
<!-- Slug: {{slug-kebab}} -->
<!-- Categories: aqua, {{categoria}} -->
<!-- Description: {{Descripción corta del patrón}} -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"level":2,"textAlign":"center"} -->
  <h2 class="has-text-align-center">{{TITULO_SECCION}}</h2>
  <!-- /wp:heading -->

  <!-- wp:paragraph {"align":"center"} -->
  <p class="has-text-align-center">{{DESCRIPCION_SECCION}}</p>
  <!-- /wp:paragraph -->

  <!-- AQUÍ TUS BLOQUES CORE -->
  
  <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
  <div class="wp-block-buttons">
    <!-- wp:button {"className":"is-style-fill"} -->
    <div class="wp-block-button is-style-fill"><a class="wp-block-button__link wp-element-button">{{CTA_PRIMARIO}}</a></div>
    <!-- /wp:button -->
    <!-- wp:button {"className":"is-style-outline"} -->
    <div class="wp-block-button is-style-outline"><a class="wp-block-button__link wp-element-button">{{CTA_SECUNDARIO}}</a></div>
    <!-- /wp:button -->
  </div>
  <!-- /wp:buttons -->
</div>
<!-- /wp:group -->
```

## 🚨 SEÑALES DE ALERTA (PARAR INMEDIATAMENTE)

- ❌ Usar HTML "crudo" en lugar de bloques core
- ❌ Agregar estilos inline (colores, tipografías)
- ❌ Crear dependencias externas
- ❌ Romper herencia del theme.json
- ❌ Usar más de un H1 por patrón
- ❌ Agregar bloques no core
- ❌ Crear CSS que "maquille" el frontend
- ❌ Olvidar CTAs en alguna sección
- ❌ No incluir metadatos en patrones

## 🎯 DEFINICIÓN DE "HECHO"

Un patrón está "hecho" cuando:
- ✅ Aparece en Inserter → Patrones → Aqua
- ✅ Se inserta y edita sin tocar HTML
- ✅ Hereda estilos del tema automáticamente
- ✅ Es responsive en 360px/768px/1024px
- ✅ Cumple estándares de accesibilidad
- ✅ Incluye CTAs primario/secundario/contextual
- ✅ Cero dependencias externas
- ✅ Metadatos completos

## 🔥 RECORDATORIO CONSTANTE

**CADA DECISIÓN DEBE PREGUNTARSE:**
1. ¿Mantiene la editabilidad 100% desde WordPress?
2. ¿Hereda estilos del tema automáticamente?
3. ¿Es compatible con WooCommerce/Membresías?
4. ¿Mantiene el plugin ligero y rápido?
5. ¿Es escalable para futuros patrones?
6. ¿Incluye CTAs apropiados?
7. ¿Cumple estándares de accesibilidad?

**SI LA RESPUESTA ES NO A CUALQUIERA → NO HACERLO**

---

## 🚀 ENTREGA ESPERADA

**Plugin completo con:**
- 10 patrones Gutenberg editables
- Estructura escalable y mantenible
- Compatibilidad con WooCommerce/Membresías
- Responsive design móvil/iPad
- Accesibilidad AA
- Rendimiento Lighthouse ≥ 90
- Documentación completa
- QA checklist incluido

**¡LISTO PARA PRODUCCIÓN!**

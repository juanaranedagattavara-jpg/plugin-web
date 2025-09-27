# 🎯 REGLAS DEL PROYECTO - AQUA PATTERNS

## 📋 OBJETIVO PRINCIPAL
Construir un plugin de patrones Gutenberg reusables (Hero, Servicios, Pricing, FAQ, CTA, etc.) que el cliente pueda arrastrar/editar en WordPress sin tocar código y que puedas reutilizar entre proyectos.

## ✅ CRITERIOS DE ÉXITO (NUNCA COMPROMETER)

### 1. 100% Editable desde WordPress
- **OBLIGATORIO**: Solo bloques core (`<!-- wp:... -->`)
- **PROHIBIDO**: HTML "crudo" o código personalizado
- **RESULTADO**: Cliente edita TODO desde el editor de bloques

### 2. Ligero y Rápido
- **OBLIGATORIO**: Cero dependencias JS/CSS externas
- **OBLIGATORIO**: Estilos via theme.json del tema activo
- **PROHIBIDO**: Page builders, librerías externas
- **RESULTADO**: Plugin mínimo, herencia de estilos del tema

### 3. Escalable
- **OBLIGATORIO**: 1 patrón = 1 archivo .html
- **OBLIGATORIO**: Registro automático escaneando /patterns/*.html
- **OBLIGATORIO**: Versionado semántico
- **RESULTADO**: Fácil agregar nuevos patrones

### 4. Future-ready para WooCommerce/Membresías
- **OBLIGATORIO**: CTAs reemplazables por bloques/shortcodes
- **OBLIGATORIO**: Sin estilos que bloqueen integraciones
- **RESULTADO**: Compatibilidad sin rehacer UI

### 5. Resiliente
- **OBLIGATORIO**: Contenido permanece al desactivar plugin
- **RESULTADO**: Cero pérdida de contenido

## 🏗️ ARQUITECTURA OBLIGATORIA

```
aqua-patterns/
├─ aqua-patterns.php              // bootstrap y registro automático
├─ readme.txt                     // documentación estándar
├─ patterns/                      // 1 archivo .html = 1 patrón
│  ├─ hero.html
│  ├─ servicios-3.html
│  ├─ pricing-3.html
│  ├─ faq.html
│  └─ cta.html
└─ assets/
   └─ editor.css                  // opcional: utilidades SOLO editor
```

## 📝 REGLAS DE CÓDIGO (NUNCA VIOLAR)

### Metadatos en Comentarios (OBLIGATORIO)
```html
<!-- Title: {{Título legible}} -->
<!-- Slug: {{slug-kebab}} -->
<!-- Categories: aqua, text -->
<!-- Description: {{Descripción corta}} -->
```

### Bloques Core ÚNICAMENTE
- **PERMITIDO**: Group, Stack, Row, Columns, Cover, Heading, Paragraph, Buttons, Image, List
- **PROHIBIDO**: Bloques de plugins, HTML personalizado, shortcodes

### Estructura de Contenido
- **H1**: Solo en Hero (1 por página)
- **H2**: Secciones principales
- **H3**: Elementos dentro de secciones
- **Responsive**: Columns con stack móvil automático
- **CTAs**: URLs vacías para asignación del cliente

## 🎨 REGLAS DE DISEÑO (HERENCIA DEL TEMA)

### Colores y Tipografías
- **PROHIBIDO**: Estilos inline (colores, tipografías, tamaños)
- **OBLIGATORIO**: Heredar del theme.json del tema activo
- **RESULTADO**: Patrones se adaptan automáticamente al tema

### Responsive Design
- **OBLIGATORIO**: Mobile-first con Columns
- **PROHIBIDO**: Widths fijos, breakpoints personalizados
- **RESULTADO**: Responsive nativo de WordPress

### Accesibilidad (A11y)
- **OBLIGATORIO**: Contraste AA mínimo
- **OBLIGATORIO**: Alt text en imágenes: "Imagen de ejemplo"
- **OBLIGATORIO**: Botones con texto significativo
- **OBLIGATORIO**: Orden lógico de headings

## 🔧 REGLAS DE DESARROLLO

### Registro Automático
```php
// OBLIGATORIO: Escanear patterns/*.html automáticamente
$pattern_files = glob($patterns_dir . '*.html');
foreach ($pattern_files as $pattern_file) {
    $pattern_data = aqua_patterns_parse_metadata($content);
    register_block_pattern('aqua-patterns/' . $pattern_data['slug'], $args);
}
```

### CSS del Editor
- **PERMITIDO**: Solo utilidades mínimas para claridad en editor
- **PROHIBIDO**: "Maquillar" frontend desde aquí
- **OBJETIVO**: Mejorar experiencia de edición, no apariencia

### Nombres de Archivos
- **OBLIGATORIO**: kebab-case corto y semántico
- **EJEMPLOS**: `pricing-3.html`, `hero.html`, `servicios-3.html`

## 🚫 PROHIBICIONES ABSOLUTAS

### En Patrones
- ❌ HTML "crudo" o código personalizado
- ❌ Estilos inline (colores, tipografías, tamaños)
- ❌ Bloques no core
- ❌ Dependencias externas
- ❌ Branding duro en contenido

### En Código
- ❌ Dependencias JS/CSS externas
- ❌ Overrides de WooCommerce/Membresías
- ❌ Theme.json propio del plugin
- ❌ Plantillas de tema

### En Estructura
- ❌ Anidar grupos innecesarios
- ❌ Widths fijos
- ❌ Breakpoints personalizados
- ❌ Clases CSS personalizadas

## ✅ CHECKLIST OBLIGATORIO (CADA PATRÓN)

### Metadatos
- [ ] Title, Slug, Categories, Description completos
- [ ] Categoría "aqua" incluida

### Contenido
- [ ] Solo bloques core `<!-- wp:... -->`
- [ ] Un (1) h1 reservado para Hero
- [ ] Sin estilos inline ni clases personalizadas
- [ ] Botones con texto claro y URL vacía
- [ ] Se ve bien a 360px (móvil)

### Accesibilidad
- [ ] Headings ordenados (H1 → H2 → H3)
- [ ] Alt text en imágenes
- [ ] Contraste AA heredado del tema
- [ ] Botones con texto significativo

## 🎯 COMPATIBILIDAD FUTURA (WooCommerce/Membresías)

### Pricing Pattern
- **OBLIGATORIO**: CTAs reemplazables por bloque del plugin
- **OBLIGATORIO**: Estructura simple para shortcodes
- **PROHIBIDO**: Estilos que choquen con Woo/PMPro

### Otros Patrones
- **OBLIGATORIO**: Bloques core simples
- **OBLIGATORIO**: Herencia de estilos del tema
- **RESULTADO**: Compatibilidad automática

## 📊 MÉTRICAS DE CALIDAD

### Rendimiento
- **OBLIGATORIO**: Lighthouse ≥ 90 (móvil y escritorio)
- **OBLIGATORIO**: Cero JS, cero librerías CSS
- **OBLIGATORIO**: TTFB y CLS controlados

### Funcionalidad
- [ ] Patrones aparecen en Inserter → Patrones → Aqua
- [ ] Insertar/editar sin tocar HTML
- [ ] Desactivar plugin: contenido se mantiene

### Accesibilidad
- [ ] Headings ordenados, labels/alt OK
- [ ] Contraste AA con tema base
- [ ] Navegación por teclado funcional

## 🔄 FLUJO DE TRABAJO

### Al Crear Patrón
1. Usar plantilla base con metadatos
2. Solo bloques core
3. Validar responsive (360px)
4. Verificar accesibilidad
5. Commit con convención: `feat(pattern): nombre-patron`

### Al Modificar Código
1. Mantener compatibilidad con temas
2. No romper patrones existentes
3. Actualizar documentación
4. Commit con convención: `fix(pattern): descripcion`

### Al Agregar Funcionalidad
1. Mantener arquitectura simple
2. No agregar dependencias
3. Documentar cambios
4. Commit con convención: `feat: nueva-funcionalidad`

## 🎨 PLANTILLA BASE (COPIAR/PEGAR)

```html
<!-- Title: {{Título legible}} -->
<!-- Slug: {{slug-kebab}} -->
<!-- Categories: aqua, text -->
<!-- Description: {{Descripción corta del patrón}} -->

<!-- wp:group {"layout":{"type":"constrained"}} -->
<div class="wp-block-group">
  <!-- wp:heading {"level":2,"textAlign":"center"} -->
  <h2 class="has-text-align-center">{{TITULO_SECCION}}</h2>
  <!-- /wp:heading -->

  <!-- AQUÍ TUS BLOQUES CORE -->
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

## 🎯 DEFINICIÓN DE "HECHO"

Un patrón está "hecho" cuando:
- ✅ Aparece en Inserter → Patrones → Aqua
- ✅ Se inserta y edita sin tocar HTML
- ✅ Hereda estilos del tema automáticamente
- ✅ Es responsive en móvil (360px)
- ✅ Cumple estándares de accesibilidad
- ✅ CTAs son reemplazables (si aplica)
- ✅ Cero dependencias externas

---

## 🔥 RECORDATORIO CONSTANTE

**CADA DECISIÓN DEBE PREGUNTARSE:**
1. ¿Mantiene la editabilidad 100% desde WordPress?
2. ¿Hereda estilos del tema automáticamente?
3. ¿Es compatible con WooCommerce/Membresías?
4. ¿Mantiene el plugin ligero y rápido?
5. ¿Es escalable para futuros patrones?

**SI LA RESPUESTA ES NO A CUALQUIERA → NO HACERLO**
